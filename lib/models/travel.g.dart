// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Travel _$TravelFromJson(Map<String, dynamic> json) => Travel(
      d_id: (json['d_id'] as num).toInt(),
      d_location: json['d_location'] as String,
      d_price: json['d_price'] as String,
      d_duration: json['d_duration'] as String,
      d_totalCost: (json['d_totalCost'] as num).toDouble(),
      d_season: Season.fromJson(json['d_season'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TravelToJson(Travel instance) => <String, dynamic>{
      'd_id': instance.d_id,
      'd_location': instance.d_location,
      'd_price': instance.d_price,
      'd_duration': instance.d_duration,
      'd_season': instance.d_season,
      'd_totalCost': instance.d_totalCost,
    };
