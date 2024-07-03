import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:outsera_filme/models/response.dart';

class ApiService {
  final String baseUrl = 'https://tools.texoit.com/backend-java/api/movies';

  Future<List<dynamic>> getYearsWithMultipleWinners() async {
    final response = await http.get(Uri.parse('$baseUrl?projection=years-with-multiple-winners'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['years'];
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<dynamic>> getTopStudiosWithWinners({int? limit}) async {
    final response = await http.get(Uri.parse('$baseUrl?projection=studios-with-win-count'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['studios'];

      if (limit != null) {
        return data.sublist(0, limit);
      }
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Map<String, dynamic>> getWinIntervalsForProducers() async {
    final response = await http.get(Uri.parse('$baseUrl?projection=max-min-win-interval-for-producers'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Response> getMoviesByYear({
    int? year,
    bool? winner,
    int page = 0,
    int size = 10,
  }) async {
    var url = '$baseUrl?page=$page&size=$size';

    if (year != null) {
      url += '&year=$year';
    }

    if (winner != null) {
      url += '&winner=$winner';
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return responseFromMap(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
