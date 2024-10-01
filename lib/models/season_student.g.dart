// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonStudent _$SeasonStudentFromJson(Map<String, dynamic> json) =>
    SeasonStudent(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
      paid: (json['paid'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      group: Group.fromJson(json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SeasonStudentToJson(SeasonStudent instance) =>
    <String, dynamic>{
      'student': instance.student,
      'season': instance.season,
      'paid': instance.paid,
      'price': instance.price,
      'group': instance.group,
    };
