// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelStudent _$TravelStudentFromJson(Map<String, dynamic> json) =>
    TravelStudent(
      d_seasonStudent: SeasonStudent.fromJson(json['student'] as Map<String, dynamic>),
      travel: Travel.fromJson(json['travel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TravelStudentToJson(TravelStudent instance) =>
    <String, dynamic>{
      'student': instance.d_seasonStudent,
      'travel': instance.travel,
    };
