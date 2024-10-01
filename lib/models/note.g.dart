// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      d_date: DateTime.parse(json['d_date'] as String),
      description: json['description'] as String,
      d_id: (json['d_id'] as num).toInt(),
      d_student: Student.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'd_id': instance.d_id,
      'student': instance.d_student,
      'description': instance.description,
      'd_date': instance.d_date.toIso8601String(),
    };
