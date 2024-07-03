import 'package:http/http.dart' as http;
import 'package:outsera_filme/models/response.dart';

import '../models/response_interval_wins.dart';
import '../models/response_win_count.dart';
import '../models/response_year_multiple_wins.dart';

class ApiService {
  final String baseUrl = 'https://tools.texoit.com/backend-java/api/movies';

  /// Returns a list of years where multiple films have won.
  ///
  /// If the request fails (response status code is not 200), an
  /// [Exception] is thrown indicating the failure to load data.
  ///
  /// Returns:
  ///   A `Future` that resolves to a `List<Year>` containing the years with
  ///   multiple film winners.
  ///
  /// Throws:
  ///   An [Exception] if the HTTP request fails or the data cannot be loaded.
  ///
  Future<List<Year>> getYearsWithMultipleWinners() async {
    final response = await http.get(Uri.parse('$baseUrl?projection=years-with-multiple-winners'));
    if (response.statusCode == 200) {
      return responseYearMultipleWinsFromJson(response.body).years;
    } else {
      throw Exception('Failed to load data');
    }
  }

  /// Return the studios with the most wins
  /// Retrieves a list of studios with the highest number of wins.
  ///
  /// If a `limit` is provided, the returned list will be truncated to contain
  /// only up to `limit` number of studios. If no `limit` is provided, the
  /// complete list of studios will be returned.
  ///
  /// Throws an [Exception] if the HTTP request fails.
  ///
  /// Parameters:
  /// - [limit] (int?): An optional parameter to limit the number of studios
  ///   returned in the list. If null, all studios are returned.
  ///
  /// Returns:
  /// A [Future] that completes with a [List<Studio>] containing the top studios
  /// with the most wins.
  ///
  Future<List<Studio>> getTopStudiosWithWinners({int? limit}) async {
    final response = await http.get(Uri.parse('$baseUrl?projection=studios-with-win-count'));
    if (response.statusCode == 200) {
      List<Studio> data = responseWinCountFromJson(response.body).studios;

      if (limit != null) {
        return data.sublist(0, limit);
      }
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  /// Fetches and returns the producers with the largest and smallest interval between victories.
  ///
  /// Throws an [Exception] if the request fails.
  ///
  /// Returns a [Future] that resolves to a [ResponseIntervalWins] object containing the data
  /// of the producers' win intervals.
  ///
  Future<ResponseIntervalWins> getWinIntervalsForProducers() async {
    final response = await http.get(Uri.parse('$baseUrl?projection=max-min-win-interval-for-producers'));
    if (response.statusCode == 200) {
      return responseIntervalWinsFromJson(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  /// Fetches a list of movies from the server with optional filters for year and award-winning status.
  ///
  /// Parameters:
  /// - `year` (int?, optional): The year to filter the movies by. If `null`, no year filter is applied.
  /// - `winner` (bool?, optional): The award-winning status to filter the movies by. If `null`, no award-winning filter is applied.
  /// - `page` (int, optional): The page number for pagination. Defaults to 0.
  /// - `size` (int, optional): The number of movies per page. Defaults to 10.
  ///
  /// Returns:
  /// - `Future<Response>`: A future that resolves to a `Response` object containing the list of movies.
  ///
  /// Throws:
  /// - `Exception`: If the request fails, an exception is thrown with the message 'Failed to load data'.
  ///
  Future<Response> getMovies({
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
