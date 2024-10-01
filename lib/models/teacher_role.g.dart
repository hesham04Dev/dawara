// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherRole _$TeacherRoleFromJson(Map<String, dynamic> json) => TeacherRole(
      d_teacher: Teacher.fromJson(json['d_teacher'] as Map<String, dynamic>),
      d_group: json['d_group'] == null
          ? null
          : Group.fromJson(json['d_group'] as Map<String, dynamic>),
      d_material: json['d_material'] == null
          ? null
          : Material.fromJson(json['d_material'] as Map<String, dynamic>),
      d_id: (json['d_id'] as num).toInt(),
      d_season: Season.fromJson(json['d_season'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherRoleToJson(TeacherRole instance) =>
    <String, dynamic>{
      'd_id': instance.d_id,
      'd_season': instance.d_season,
      'd_teacher': instance.d_teacher,
      'd_group': instance.d_group,
      'd_material': instance.d_material,
    };
