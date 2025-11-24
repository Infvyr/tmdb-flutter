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
    this.type,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.rating,
    this.network,
    this.externals,
    this.image,
    this.summary,
    this.links,
    this.schedule,
  });

  factory ShowModel.fromEntity(Show show) => ShowModel(
    showId: show.showId,
    url: show.url,
    name: show.name,
    language: show.language,
    genres: show.genres,
    status: show.status,
    type: show.type,
    runtime: show.runtime,
    averageRuntime: show.averageRuntime,
    premiered: show.premiered,
    ended: show.ended,
    rating: show.rating,
    network: show.network,
    externals: show.externals,
    image: show.image,
    summary: show.summary,
    links: show.links,
    schedule: show.schedule,
  );

  ShowModel.empty()
    : showId = 0,
      url = '',
      name = '',
      language = '',
      genres = [],
      status = '',
      type = '',
      runtime = 0,
      averageRuntime = 0,
      premiered = '',
      ended = '',
      rating = ShowRating.empty(),
      network = ShowNetwork.empty(),
      externals = ShowExternals.empty(),
      image = ShowImage.empty(),
      summary = '',
      links = ShowLinks.empty(),
      schedule = ShowSchedule.empty();

  factory ShowModel.fromJson(Map<String, dynamic> json) {
    final genresList = json['genres'] as List<dynamic>?;
    final genres = genresList != null
        ? List<String>.from(genresList.whereType<String>())
        : <String>[];

    return ShowModel(
      showId: json['id'] as int,
      url: json['url'] as String,
      name: json['name'] as String,
      language: json['language'] as String? ?? 'Unknown',
      genres: genres,
      status: json['status'] as String? ?? 'Unknown',
      type: json['type'] as String?,
      runtime: json['runtime'] as int?,
      averageRuntime: json['averageRuntime'] as int?,
      premiered: json['premiered'] as String?,
      ended: json['ended'] as String?,
      rating: json['rating'] != null
          ? ShowRating.fromJson(json['rating'] as Map<String, dynamic>)
          : null,
      network: json['network'] != null
          ? ShowNetwork.fromJson(json['network'] as Map<String, dynamic>)
          : null,
      externals: json['externals'] != null
          ? ShowExternals.fromJson(json['externals'] as Map<String, dynamic>)
          : null,
      image: json['image'] != null
          ? ShowImage.fromJson(json['image'] as Map<String, dynamic>)
          : null,
      summary: json['summary'] as String?,
      links: json['_links'] != null
          ? ShowLinks.fromJson(json['_links'] as Map<String, dynamic>)
          : null,
      schedule: json['schedule'] != null
          ? ShowSchedule.fromJson(json['schedule'] as Map<String, dynamic>)
          : null,
    );
  }

  Id id = Isar.autoIncrement;

  late int showId;
  late String url;
  late String name;
  late String language;
  late List<String> genres;
  late String status;
  late String? type;
  late int? runtime;
  late int? averageRuntime;
  late String? premiered;
  late String? ended;
  late ShowRating? rating;
  late ShowNetwork? network;
  late ShowExternals? externals;
  late ShowImage? image;
  late String? summary;
  late ShowLinks? links;
  late ShowSchedule? schedule;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': showId,
    'url': url,
    'name': name,
    'language': language,
    'genres': genres,
    'status': status,
    'type': type,
    'runtime': runtime,
    'averageRuntime': averageRuntime,
    'premiered': premiered,
    'ended': ended,
    'rating': rating?.toJson(),
    'network': network?.toJson(),
    'externals': externals?.toJson(),
    'image': image?.toJson(),
    'summary': summary,
    '_links': links?.toJson(),
    'schedule': schedule?.toJson(),
  };

  Show toEntity() => Show(
    showId: showId,
    url: url,
    name: name,
    language: language,
    genres: genres,
    status: status,
    type: type,
    runtime: runtime,
    averageRuntime: averageRuntime,
    premiered: premiered,
    ended: ended,
    rating: rating,
    network: network,
    externals: externals,
    image: image,
    summary: summary,
    links: links,
    schedule: schedule,
  );

  @override
  String toString() =>
      'ShowModel(id: $id, showId: $showId, url: $url, name: $name, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, rating: $rating, network: $network, externals: $externals, image: $image, summary: $summary, links: $links, schedule: $schedule)';
}

@embedded
class ShowRating {
  ShowRating({this.average = 0.0});

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
  late double average;

  Map<String, dynamic> toJson() => {'average': average};

  @override
  String toString() => 'ShowRating(average: $average)';
}

@embedded
class ShowNetwork {
  ShowNetwork({this.networkId, this.name, this.country});

  ShowNetwork.empty() : networkId = 0, name = '', country = Country.empty();

  factory ShowNetwork.fromJson(Map<String, dynamic> json) => ShowNetwork(
    networkId: json['id'] as int? ?? 0,
    name: json['name'] as String? ?? '',
    country: json['country'] != null
        ? Country.fromJson(json['country'] as Map<String, dynamic>)
        : null,
  );

  int? networkId;
  String? name;
  Country? country;

  Map<String, dynamic> toJson() => {'id': networkId, 'name': name, 'country': country?.toJson()};

  @override
  String toString() => 'ShowNetwork(networkId: $networkId, name: $name, country: $country)';
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

  @override
  String toString() => 'Country(name: $name, code: $code, timezone: $timezone)';
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

  @override
  String toString() => 'ShowExternals(tvrage: $tvrage, thetvdb: $thetvdb)';
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

  @override
  String toString() => 'ShowImage(medium: $medium, original: $original)';
}

@embedded
class ShowLinks {
  ShowLinks({this.selfHref, this.previousEpisodeHref, this.previousEpisodeName});

  ShowLinks.empty() : selfHref = '', previousEpisodeHref = '', previousEpisodeName = '';

  factory ShowLinks.fromJson(Map<String, dynamic> json) {
    final self = json['self'] as Map<String, dynamic>?;
    final previousEpisode = json['previousepisode'] as Map<String, dynamic>?;
    return ShowLinks(
      selfHref: self?['href'] as String? ?? '',
      previousEpisodeHref: previousEpisode?['href'] as String?,
      previousEpisodeName: previousEpisode?['name'] as String?,
    );
  }

  String? selfHref;
  String? previousEpisodeHref;
  String? previousEpisodeName;

  Map<String, dynamic> toJson() => {
    'self': {'href': selfHref},
    'previousepisode': {'href': previousEpisodeHref, 'name': previousEpisodeName},
  };

  @override
  String toString() =>
      'ShowLinks(self: $selfHref, previousEpisodeHref: $previousEpisodeHref,previousEpisodeName:$previousEpisodeName)';
}

@embedded
class ShowSchedule {
  ShowSchedule({this.time, this.days});

  ShowSchedule.empty() : time = '', days = [];

  factory ShowSchedule.fromJson(Map<String, dynamic> json) {
    final daysList = json['days'] as List<dynamic>?;
    final days = daysList != null ? List<String>.from(daysList.whereType<String>()) : <String>[];
    return ShowSchedule(time: json['time'] as String? ?? '', days: days);
  }

  String? time;
  List<String>? days;

  Map<String, dynamic> toJson() => {'time': time, 'days': days};

  @override
  String toString() => 'ShowSchedule(time: $time, days: $days)';
}
