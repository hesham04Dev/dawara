// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Travel _$TravelFromJson(Map<String, dynamic> json) => Travel(
      id: (json['id'] as num).toInt(),
      location: json['location'] as String,
      price: json['price'] as String,
      duration: json['duration'] as String,
      totalCost: (json['totalCost'] as num).toDouble(),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TravelToJson(Travel instance) => <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'price': instance.price,
      'duration': instance.duration,
      'season': instance.season,
      'totalCost': instance.totalCost,
    };
