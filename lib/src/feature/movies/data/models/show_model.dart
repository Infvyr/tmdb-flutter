import 'package:isar/isar.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

part 'show_model.g.dart';

@collection
class ShowModel {
  ShowModel({
    required this.showId,
    required this.url,
    required this.name,
    required this.language,
    required this.genres,
    required this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.rating,
    this.network,
    this.externals,
    this.image,
    this.summary,
  });

  factory ShowModel.fromEntity(Show show) => ShowModel(
    showId: show.showId,
    url: show.url,
    name: show.name,
    language: show.language,
    genres: show.genres,
    status: show.status,
    runtime: show.runtime,
    averageRuntime: show.averageRuntime,
    premiered: show.premiered,
    ended: show.ended,
    rating: show.rating,
    network: show.network,
    externals: show.externals,
    image: show.image,
    summary: show.summary,
  );

  ShowModel.empty()
    : showId = 0,
      url = '',
      name = '',
      language = '',
      genres = [],
      status = '',
      runtime = 0,
      averageRuntime = 0,
      premiered = '',
      ended = '',
      rating = ShowRating.empty(),
      network = ShowNetwork.empty(),
      externals = ShowExternals.empty(),
      image = ShowImage.empty(),
      summary = '';

  factory ShowModel.fromJson(Map<String, dynamic> json) => ShowModel(
    showId: json['id'] as int,
    url: json['url'] as String,
    name: json['name'] as String,
    language: json['language'] as String,
    genres: List<String>.from(json['genres'] as List<dynamic>),
    status: json['status'] as String,
    runtime: json['runtime'] as int?,
    averageRuntime: json['averageRuntime'] as int?,
    premiered: json['premiered'] as String?,
    ended: json['ended'] as String?,
    rating: json['rating'] != null ? ShowRating.fromJson(json['rating'] as Map<String, dynamic>) : null,
    network: json['network'] != null ? ShowNetwork.fromJson(json['network'] as Map<String, dynamic>) : null,
    externals: json['externals'] != null ? ShowExternals.fromJson(json['externals'] as Map<String, dynamic>) : null,
    image: json['image'] != null ? ShowImage.fromJson(json['image'] as Map<String, dynamic>) : null,
    summary: json['summary'] as String?,
  );

  Id id = Isar.autoIncrement;

  late int showId;
  late String url;
  late String name;
  late String language;
  late List<String> genres;
  late String status;
  late int? runtime;
  late int? averageRuntime;
  late String? premiered;
  late String? ended;
  late ShowRating? rating;
  late ShowNetwork? network;
  late ShowExternals? externals;
  late ShowImage? image;
  late String? summary;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': showId,
    'url': url,
    'name': name,
    'language': language,
    'genres': genres,
    'status': status,
    'runtime': runtime,
    'averageRuntime': averageRuntime,
    'premiered': premiered,
    'ended': ended,
    'rating': rating?.toJson(),
    'network': network?.toJson(),
    'externals': externals?.toJson(),
    'image': image?.toJson(),
    'summary': summary,
  };

  Show toEntity() => Show(
    showId: showId,
    url: url,
    name: name,
    language: language,
    genres: genres,
    status: status,
    runtime: runtime,
    averageRuntime: averageRuntime,
    premiered: premiered,
    ended: ended,
    rating: rating,
    network: network,
    externals: externals,
    image: image,
    summary: summary,
  );

  @override
  String toString() =>
      'ShowModel(id: $id, showId: $showId, url: $url, name: $name, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, rating: $rating, network: $network, externals: $externals, image: $image, summary: $summary)';
}

@embedded
class ShowRating {
  ShowRating({this.average});

  ShowRating.empty() : average = 0.0;

  factory ShowRating.fromJson(Map<String, dynamic> json) {
    final average = json['average'];
    return ShowRating(
      average: switch (average) {
        final double v => v,
        final int v => v.toDouble(),
        _ => 0.0,
      },
    );
  }
  double? average;

  Map<String, dynamic> toJson() => {'average': average};
}

@embedded
class ShowNetwork {
  ShowNetwork({this.networkId, this.name, this.country});

  ShowNetwork.empty() : networkId = 0, name = '', country = Country.empty();

  factory ShowNetwork.fromJson(Map<String, dynamic> json) => ShowNetwork(
    networkId: json['id'] as int? ?? 0,
    name: json['name'] as String? ?? '',
    country: json['country'] != null ? Country.fromJson(json['country'] as Map<String, dynamic>) : null,
  );

  int? networkId;
  String? name;
  Country? country;

  Map<String, dynamic> toJson() => {'id': networkId, 'name': name, 'country': country?.toJson()};
}

@embedded
class Country {
  Country({this.name, this.code, this.timezone});

  Country.empty() : name = '', code = '', timezone = '';

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    name: json['name'] as String? ?? '',
    code: json['code'] as String? ?? '',
    timezone: json['timezone'] as String? ?? '',
  );

  String? name;
  String? code;
  String? timezone;

  Map<String, dynamic> toJson() => {'name': name, 'code': code, 'timezone': timezone};
}

@embedded
class ShowExternals {
  ShowExternals({this.tvrage, this.thetvdb});

  ShowExternals.empty() : tvrage = 0, thetvdb = 0;

  factory ShowExternals.fromJson(Map<String, dynamic> json) =>
      ShowExternals(tvrage: json['tvrage'] as int?, thetvdb: json['thetvdb'] as int?);

  int? tvrage;
  int? thetvdb;

  Map<String, dynamic> toJson() => {'tvrage': tvrage, 'thetvdb': thetvdb};
}

@embedded
class ShowImage {
  ShowImage({this.medium, this.original});

  ShowImage.empty() : medium = '', original = '';

  factory ShowImage.fromJson(Map<String, dynamic> json) =>
      ShowImage(medium: json['medium'] as String?, original: json['original'] as String?);

  String? medium;
  String? original;

  Map<String, dynamic> toJson() => {'medium': medium, 'original': original};
}
