import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdbmaze/src/app/utils/result.dart';
import 'package:tmdbmaze/src/feature/movies/data/datasources/shows_local_datasource.dart';
import 'package:tmdbmaze/src/feature/movies/data/datasources/shows_remote_datasource.dart';
import 'package:tmdbmaze/src/feature/movies/data/datasources/shows_search_filter_local_datasource.dart';
import 'package:tmdbmaze/src/feature/movies/data/models/show_model.dart';
import 'package:tmdbmaze/src/feature/movies/data/repositories/shows_repository_impl.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/pagination_params.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/show_entity.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/show_filter.dart';

import '../../../../fixtures/show_fixtures.dart';

class MockShowsRemoteDataSource extends Mock implements ShowsRemoteDataSource {}

class MockShowsLocalDataSource extends Mock implements ShowsLocalDataSource {}

class MockShowsSearchFilterLocalDatasource extends Mock
    implements ShowsSearchFilterLocalDatasource {}

void main() {
  late MockShowsRemoteDataSource mockRemoteDataSource;
  late MockShowsLocalDataSource mockLocalDataSource;
  late MockShowsSearchFilterLocalDatasource mockSearchFilterDataSource;
  late ShowsRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockShowsRemoteDataSource();
    mockLocalDataSource = MockShowsLocalDataSource();
    mockSearchFilterDataSource = MockShowsSearchFilterLocalDatasource();
    repository = ShowsRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      searchFilterLocalDataSource: mockSearchFilterDataSource,
    );
  });

  group('ShowsRepositoryImpl', () {
    group('getShows', () {
      test('returns cached shows when cache exists', () async {
        when(
          () => mockLocalDataSource.getShows(),
        ).thenAnswer((_) async => List<ShowModel>.from(showModelList));

        final result = await repository.getShows(forceRefresh: false);

        expect(result, isA<Success<List<Show>>>());
        expect((result as Success<List<Show>>).data, hasLength(4));
        verify(() => mockLocalDataSource.getShows()).called(1);
      });

      test('fetches remote shows when cache is empty', () async {
        when(() => mockLocalDataSource.getShows()).thenAnswer((_) async => []);
        when(
          () => mockRemoteDataSource.fetchShows(),
        ).thenAnswer((_) async => List<ShowModel>.from(showModelList));
        when(() => mockLocalDataSource.cacheShows(any())).thenAnswer((_) async => {});

        final result = await repository.getShows(forceRefresh: false);

        expect(result, isA<Success<List<Show>>>());
        expect((result as Success<List<Show>>).data, hasLength(4));
        verify(() => mockRemoteDataSource.fetchShows()).called(1);
      });

      test('fetches remote when forceRefresh is true', () async {
        when(
          () => mockRemoteDataSource.fetchShows(),
        ).thenAnswer((_) async => List<ShowModel>.from(showModelList));
        when(() => mockLocalDataSource.cacheShows(any())).thenAnswer((_) async => {});

        await repository.getShows(forceRefresh: true);

        verify(() => mockRemoteDataSource.fetchShows()).called(1);
      });

      test('returns Error when both remote and cache fail', () async {
        when(() => mockLocalDataSource.getShows()).thenThrow(Exception('Cache error'));
        when(() => mockRemoteDataSource.fetchShows()).thenThrow(Exception('Network error'));

        final result = await repository.getShows(forceRefresh: false);

        expect(result, isA<Error<List<Show>>>());
      });
    });

    group('getLocalShows', () {
      test('returns Success with local shows', () async {
        when(
          () => mockLocalDataSource.getShows(),
        ).thenAnswer((_) async => List<ShowModel>.from(showModelList));

        final result = await repository.getLocalShows();

        expect(result, isA<Success<List<Show>>>());
        expect((result as Success<List<Show>>).data, hasLength(4));
      });

      test('returns Error when fetch fails', () async {
        when(() => mockLocalDataSource.getShows()).thenThrow(Exception('Database error'));

        final result = await repository.getLocalShows();

        expect(result, isA<Error<List<Show>>>());
      });
    });

    group('filterShows', () {
      test('filters by genre correctly', () {
        const filter = ShowFilter(genres: ['Drama']);
        final filtered = repository.filterShows(List<Show>.from(showEntityList), filter);

        expect(filtered.length, 3);
        expect(filtered.every((show) => show.genres.contains('Drama')), true);
      });

      test('filters by status correctly', () {
        const filter = ShowFilter(statuses: ['Running']);
        final filtered = repository.filterShows(List<Show>.from(showEntityList), filter);

        expect(filtered.length, 1);
        expect(filtered.first.name, 'Stranger Things');
      });

      test('filters by multiple genres', () {
        const filter = ShowFilter(genres: ['Comedy', 'Adventure']);
        final filtered = repository.filterShows(List<Show>.from(showEntityList), filter);

        expect(filtered.length, 2);
      });

      test('filters by rating range', () {
        const filter = ShowFilter(minRating: 9, maxRating: 9.5);
        final filtered = repository.filterShows(List<Show>.from(showEntityList), filter);

        expect(filtered.length, 2);
      });

      test('sorts by name ascending', () {
        const filter = ShowFilter(sortBy: SortField.name, sortOrder: SortOrder.asc);
        final sorted = repository.filterShows(List<Show>.from(showEntityList), filter);

        expect(sorted.map((s) => s.name).toList(), [
          'Breaking Bad',
          'Game of Thrones',
          'Stranger Things',
          'The Office',
        ]);
      });
    });

    group('paginateShows', () {
      test('returns first page correctly', () {
        const pagination = PaginationParams(currentPage: 1, pageSize: 2);
        final paginated = repository.paginateShows(List<Show>.from(showEntityList), pagination);

        expect(paginated.length, 2);
      });

      test('returns correct page when currentPage > 1', () {
        const pagination = PaginationParams(currentPage: 2, pageSize: 2);
        final paginated = repository.paginateShows(List<Show>.from(showEntityList), pagination);

        expect(paginated.length, 2);
      });

      test('returns empty list when page is beyond data', () {
        const pagination = PaginationParams(currentPage: 5, pageSize: 2);
        final paginated = repository.paginateShows(List<Show>.from(showEntityList), pagination);

        expect(paginated, isEmpty);
      });

      test('puts Running shows first', () {
        const pagination = PaginationParams(currentPage: 1, pageSize: 10);
        final paginated = repository.paginateShows(List<Show>.from(showEntityList), pagination);

        expect(paginated.first.status.toLowerCase(), 'running');
      });
    });

    group('clearShows', () {
      test('calls localDataSource.clearShows', () async {
        when(() => mockLocalDataSource.clearShows()).thenAnswer((_) async => {});

        await repository.clearShows();

        verify(() => mockLocalDataSource.clearShows()).called(1);
      });
    });
  });
}
