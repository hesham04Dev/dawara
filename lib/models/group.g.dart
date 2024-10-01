// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
      d_season: Season.fromJson(json['d_season'] as Map<String, dynamic>),
      d_id: (json['d_id'] as num).toInt(),
      d_name: json['d_name'] as String,
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'd_id': instance.d_id,
      'd_season': instance.d_season,
      'd_name': instance.d_name,
    };
