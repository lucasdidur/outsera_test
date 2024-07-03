// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_win_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseWinCountImpl _$$ResponseWinCountImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseWinCountImpl(
      studios: (json['studios'] as List<dynamic>)
          .map((e) => Studio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseWinCountImplToJson(
        _$ResponseWinCountImpl instance) =>
    <String, dynamic>{
      'studios': instance.studios,
    };

_$StudioImpl _$$StudioImplFromJson(Map<String, dynamic> json) => _$StudioImpl(
      name: json['name'] as String,
      winCount: (json['winCount'] as num).toInt(),
    );

Map<String, dynamic> _$$StudioImplToJson(_$StudioImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'winCount': instance.winCount,
    };
