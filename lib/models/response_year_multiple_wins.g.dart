// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_year_multiple_wins.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseYearMultipleWinsImpl _$$ResponseYearMultipleWinsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseYearMultipleWinsImpl(
      years: (json['years'] as List<dynamic>)
          .map((e) => Year.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseYearMultipleWinsImplToJson(
        _$ResponseYearMultipleWinsImpl instance) =>
    <String, dynamic>{
      'years': instance.years,
    };

_$YearImpl _$$YearImplFromJson(Map<String, dynamic> json) => _$YearImpl(
      year: (json['year'] as num).toInt(),
      winnerCount: (json['winnerCount'] as num).toInt(),
    );

Map<String, dynamic> _$$YearImplToJson(_$YearImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'winnerCount': instance.winnerCount,
    };
