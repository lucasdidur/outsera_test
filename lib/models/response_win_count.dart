import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_win_count.freezed.dart';
part 'response_win_count.g.dart';

ResponseWinCount responseWinCountFromJson(String str) => ResponseWinCount.fromJson(json.decode(str));

String responseWinCountToJson(ResponseWinCount data) => json.encode(data.toJson());

@freezed
class ResponseWinCount with _$ResponseWinCount {
  const factory ResponseWinCount({
    required List<Studio> studios,
  }) = _ResponseWinCount;

  factory ResponseWinCount.fromJson(Map<String, dynamic> json) => _$ResponseWinCountFromJson(json);
}

@freezed
class Studio with _$Studio {
  const factory Studio({
    required String name,
    required int winCount,
  }) = _Studio;

  factory Studio.fromJson(Map<String, dynamic> json) => _$StudioFromJson(json);
}
