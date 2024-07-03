// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: (json['id'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      title: json['title'] as String,
      studios:
          (json['studios'] as List<dynamic>).map((e) => e as String).toList(),
      producers:
          (json['producers'] as List<dynamic>).map((e) => e as String).toList(),
      winner: json['winner'] as bool,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'title': instance.title,
      'studios': instance.studios,
      'producers': instance.producers,
      'winner': instance.winner,
    };
