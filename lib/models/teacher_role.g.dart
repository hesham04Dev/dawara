// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherRole _$TeacherRoleFromJson(Map<String, dynamic> json) => TeacherRole(
      teacher: Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      material: json['material'] == null
          ? null
          : Material.fromJson(json['material'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherRoleToJson(TeacherRole instance) =>
    <String, dynamic>{
      'id': instance.id,
      'season': instance.season,
      'teacher': instance.teacher,
      'group': instance.group,
      'material': instance.material,
    };
