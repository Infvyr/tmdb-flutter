import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tmdbmaze/src/feature/movies/export.dart';

abstract class ShowsRemoteDataSource {
  Future<List<ShowModel>> fetchPosts();
}

class ShowsRemoteDataSourceImpl implements ShowsRemoteDataSource {
  ShowsRemoteDataSourceImpl({required this.client});

  static const _baseUrl = 'https://api.tvmaze.com';

  final http.Client client;

  @override
  Future<List<ShowModel>> fetchPosts() async {
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
}
