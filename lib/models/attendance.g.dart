// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attendance _$AttendanceFromJson(Map<String, dynamic> json) => Attendance(
      d_date: DateTime.parse(json['d_date'] as String),
      d_id: (json['d_id'] as num).toInt(),
      d_seasonStudent: SeasonStudent.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendanceToJson(Attendance instance) =>
    <String, dynamic>{
      'd_id': instance.d_id,
      'student': instance.d_seasonStudent,
      'd_date': instance.d_date.toIso8601String(),
    };
