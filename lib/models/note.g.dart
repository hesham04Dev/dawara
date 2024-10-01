// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String,
      id: (json['id'] as num).toInt(),
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
    };
