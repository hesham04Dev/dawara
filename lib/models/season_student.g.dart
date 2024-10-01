// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonStudent _$SeasonStudentFromJson(Map<String, dynamic> json) =>
    SeasonStudent(
      d_student: Student.fromJson(json['student'] as Map<String, dynamic>),
      d_season: Season.fromJson(json['d_season'] as Map<String, dynamic>),
      d_paid: (json['d_paid'] as num).toDouble(),
      d_price: (json['price'] as num).toDouble(),
      d_group: Group.fromJson(json['d_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SeasonStudentToJson(SeasonStudent instance) =>
    <String, dynamic>{
      'student': instance.d_student,
      'd_season': instance.d_season,
      'd_paid': instance.d_paid,
      'price': instance.d_price,
      'd_group': instance.d_group,
    };
