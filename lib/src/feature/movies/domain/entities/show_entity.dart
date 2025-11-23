import 'package:tmdbmaze/src/feature/movies/export.dart';

class Show {
  Show({
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

  final int showId;
  final String url;
  final String name;
  final String language;
  final List<String> genres;
  final String status;
  final String? type;
  final int? runtime;
  final int? averageRuntime;
  final String? premiered;
  final String? ended;
  final ShowRating? rating;
  final ShowNetwork? network;
  final ShowExternals? externals;
  final ShowImage? image;
  final String? summary;
  final ShowLinks? links;
  final ShowSchedule? schedule;

  @override
  String toString() =>
      'Show(showId: $showId, url: $url, name: $name, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, rating: $rating, network: $network, externals: $externals, image: $image, summary: ${summary?.substring(0, summary!.length.clamp(0, 50))}, links: $links, schedule: $schedule)';
}
