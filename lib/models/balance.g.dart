// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Balance _$BalanceFromJson(Map<String, dynamic> json) => Balance(
      d_id: (json['d_id'] as num).toInt(),
      d_season: Season.fromJson(json['d_season'] as Map<String, dynamic>),
      d_amount: (json['d_amount'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$BalanceToJson(Balance instance) => <String, dynamic>{
      'd_id': instance.d_id,
      'd_season': instance.d_season,
      'd_amount': instance.d_amount,
      'description': instance.description,
    };
