// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attendance _$AttendanceFromJson(Map<String, dynamic> json) => Attendance(
      date: DateTime.parse(json['date'] as String),
      id: (json['id'] as num).toInt(),
      student: SeasonStudent.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendanceToJson(Attendance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'date': instance.date.toIso8601String(),
    };
