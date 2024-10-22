// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_mark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialMark _$MaterialMarkFromJson(Map<String, dynamic> json) => MaterialMark(
      d_mark: (json['mark'] as num).toDouble(),
  d_student: Student.fromJson(json['d_student'] as Map<String, dynamic>),
      d_material: Material.fromJson(json['d_material'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaterialMarkToJson(MaterialMark instance) =>
    <String, dynamic>{
      'd_student': instance.d_student,
      'd_material': instance.d_material,
      'd_mark': instance.d_mark,
    };
