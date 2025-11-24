import 'package:tmdbmaze/src/feature/movies/data/models/show_model.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/pagination_params.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/search_query.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/show_entity.dart';
import 'package:tmdbmaze/src/feature/movies/domain/entities/show_filter.dart';

// Sample Show Models for testing
final showModel1 = ShowModel(
  showId: 1,
  url: 'https://www.tvmaze.com/shows/1/breaking-bad',
  name: 'Breaking Bad',
  language: 'English',
  genres: const ['Drama', 'Crime', 'Thriller'],
  status: 'Ended',
  premiered: '2008-01-20',
  ended: '2013-09-29',
  rating: ShowRating(average: 9.5),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'A chemistry teacher turned methamphetamine producer.',
);

final showModel2 = ShowModel(
  showId: 2,
  url: 'https://www.tvmaze.com/shows/2/game-of-thrones',
  name: 'Game of Thrones',
  language: 'English',
  genres: const ['Adventure', 'Drama', 'Fantasy'],
  status: 'Ended',
  premiered: '2011-04-17',
  ended: '2019-05-19',
  rating: ShowRating(average: 9.2),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'Nine noble families fight for control of the mythical land.',
);

final showModel3 = ShowModel(
  showId: 3,
  url: 'https://www.tvmaze.com/shows/3/the-office',
  name: 'The Office',
  language: 'English',
  genres: const ['Comedy'],
  status: 'Ended',
  premiered: '2005-03-24',
  ended: '2013-05-16',
  rating: ShowRating(average: 8.9),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'A mockumentary about office workers.',
);

final showModel4 = ShowModel(
  showId: 4,
  url: 'https://www.tvmaze.com/shows/4/stranger-things',
  name: 'Stranger Things',
  language: 'English',
  genres: const ['Drama', 'Fantasy', 'Horror'],
  status: 'Running',
  premiered: '2016-07-15',
  ended: null,
  rating: ShowRating(average: 8.7),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'A group of kids fight a monster in the 1980s.',
);

final showModelList = [showModel1, showModel2, showModel3, showModel4];

// Sample Show Entities (domain models)
final showEntity1 = Show(
  showId: 1,
  url: 'https://www.tvmaze.com/shows/1/breaking-bad',
  name: 'Breaking Bad',
  language: 'English',
  genres: const ['Drama', 'Crime', 'Thriller'],
  status: 'Ended',
  premiered: '2008-01-20',
  ended: '2013-09-29',
  rating: ShowRating(average: 9.5),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'A chemistry teacher turned methamphetamine producer.',
);

final showEntity2 = Show(
  showId: 2,
  url: 'https://www.tvmaze.com/shows/2/game-of-thrones',
  name: 'Game of Thrones',
  language: 'English',
  genres: const ['Adventure', 'Drama', 'Fantasy'],
  status: 'Ended',
  premiered: '2011-04-17',
  ended: '2019-05-19',
  rating: ShowRating(average: 9.2),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'Nine noble families fight for control of the mythical land.',
);

final showEntity3 = Show(
  showId: 3,
  url: 'https://www.tvmaze.com/shows/3/the-office',
  name: 'The Office',
  language: 'English',
  genres: const ['Comedy'],
  status: 'Ended',
  premiered: '2005-03-24',
  ended: '2013-05-16',
  rating: ShowRating(average: 8.9),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'A mockumentary about office workers.',
);

final showEntity4 = Show(
  showId: 4,
  url: 'https://www.tvmaze.com/shows/4/stranger-things',
  name: 'Stranger Things',
  language: 'English',
  genres: const ['Drama', 'Fantasy', 'Horror'],
  status: 'Running',
  premiered: '2016-07-15',
  ended: null,
  rating: ShowRating(average: 8.7),
  network: ShowNetwork(country: Country(code: 'US')),
  image: null,
  summary: 'A group of kids fight a monster in the 1980s.',
);

final showEntityList = [showEntity1, showEntity2, showEntity3, showEntity4];

// Test parameters
const defaultPagination = PaginationParams();
const defaultSearchQuery = SearchQuery();
const defaultFilter = ShowFilter();
