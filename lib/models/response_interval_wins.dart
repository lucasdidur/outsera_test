import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_interval_wins.freezed.dart';
part 'response_interval_wins.g.dart';

ResponseIntervalWins responseIntervalWinsFromJson(String str) => ResponseIntervalWins.fromJson(json.decode(str));

String responseIntervalWinsToJson(ResponseIntervalWins data) => json.encode(data.toJson());

@freezed
class ResponseIntervalWins with _$ResponseIntervalWins {
  const factory ResponseIntervalWins({
    required List<ResponseProducer> min,
    required List<ResponseProducer> max,
  }) = _ResponseIntervalWins;

  factory ResponseIntervalWins.fromJson(Map<String, dynamic> json) => _$ResponseIntervalWinsFromJson(json);
}

@freezed
class ResponseProducer with _$ResponseProducer {
  const factory ResponseProducer({
    required String producer,
    required int interval,
    required int previousWin,
    required int followingWin,
  }) = _ResponseProducer;

  factory ResponseProducer.fromJson(Map<String, dynamic> json) => _$ResponseProducerFromJson(json);
}
