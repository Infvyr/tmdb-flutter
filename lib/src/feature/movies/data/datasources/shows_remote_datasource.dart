import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tmdbmaze/src/feature/movies/export.dart';

abstract class ShowsRemoteDataSource {
  Future<List<ShowModel>> fetchShows();
  Future<List<ShowModel>> searchShows(String query);
}

class ShowsRemoteDataSourceImpl implements ShowsRemoteDataSource {
  ShowsRemoteDataSourceImpl({required this.client});

  static const _baseUrl = 'https://api.tvmaze.com';

  final http.Client client;

  @override
  Future<List<ShowModel>> fetchShows() async {
    final response = await client.get(Uri.parse('$_baseUrl/shows'));

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      if (decoded is! List) {
        throw Exception('Invalid response format');
      }
      final jsonList = decoded.cast<Map<String, dynamic>>();
      return jsonList.map(ShowModel.fromJson).toList();
    } else {
      throw Exception('Failed to load shows: ${response.statusCode}');
    }
  }

  @override
  Future<List<ShowModel>> searchShows(String query) async {
    final encodedQuery = Uri.encodeComponent(query);
    // TVMaze search endpoint for shows
    final response = await client.get(Uri.parse('$_baseUrl/search/shows?q=$encodedQuery'));

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      if (decoded is! List) {
        throw Exception('Invalid response format');
      }
      final jsonList = decoded.cast<Map<String, dynamic>>();
      return jsonList
          .map((item) => item['show'] as Map<String, dynamic>)
          .map(ShowModel.fromJson)
          .toList();
    } else {
      throw Exception('Failed to search shows: ${response.statusCode}');
    }
  }
}
