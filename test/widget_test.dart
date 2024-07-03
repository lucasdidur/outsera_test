import 'package:flutter_test/flutter_test.dart';
import 'package:outsera_filme/services/api_service.dart';

void main() {
  ApiService apiService = ApiService();

  test('Fetch years with multiple winners', () async {
    var years = await apiService.getYearsWithMultipleWinners();
    expect(years, isNotEmpty);
  });

  test('Fetch top studios with winners', () async {
    var studios = await apiService.getTopStudiosWithWinners();
    expect(studios, isNotEmpty);
  });

  test('Fetch win intervals for producers', () async {
    var intervals = await apiService.getWinIntervalsForProducers();
    expect(intervals.max, isNotEmpty);
    expect(intervals.min, isNotEmpty);
  });

  test('Fetch movies by year', () async {
    var response = await apiService.getMovies(year: 1980);
    expect(response.content, isNotEmpty);
    expect(response.content.length, greaterThan(1));
  });

  test('Fetch movies by year and winners', () async {
    var response = await apiService.getMovies(year: 1980, winner: true);
    expect(response.content, isNotEmpty);
    expect(response.content.length, 1);
  });
}
