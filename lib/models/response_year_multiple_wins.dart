import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_year_multiple_wins.freezed.dart';
part 'response_year_multiple_wins.g.dart';

ResponseYearMultipleWins responseYearMultipleWinsFromJson(String str) =>
    ResponseYearMultipleWins.fromJson(json.decode(str));

String responseYearMultipleWinsToJson(ResponseYearMultipleWins data) => json.encode(data.toJson());

@freezed
class ResponseYearMultipleWins with _$ResponseYearMultipleWins {
  const factory ResponseYearMultipleWins({
    required List<Year> years,
  }) = _ResponseYearMultipleWins;

  factory ResponseYearMultipleWins.fromJson(Map<String, dynamic> json) => _$ResponseYearMultipleWinsFromJson(json);
}

@freezed
class Year with _$Year {
  const factory Year({
    required int year,
    required int winnerCount,
  }) = _Year;

  factory Year.fromJson(Map<String, dynamic> json) => _$YearFromJson(json);
}
