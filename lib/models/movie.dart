import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

Movie movieFromJson(String str) => Movie.fromJson(json.decode(str));

String movieToJson(Movie data) => json.encode(data.toJson());

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required int year,
    required String title,
    required List<String> studios,
    required List<String> producers,
    required bool winner,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
