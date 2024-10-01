// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Teacher _$TeacherFromJson(Map<String, dynamic> json) => Teacher(
      d_id: (json['d_id'] as num).toInt(),
      d_name: json['d_name'] as String,
      d_phone: json['d_phone'] as String,
    );

Map<String, dynamic> _$TeacherToJson(Teacher instance) => <String, dynamic>{
      'd_id': instance.d_id,
      'd_name': instance.d_name,
      'd_phone': instance.d_phone,
    };
