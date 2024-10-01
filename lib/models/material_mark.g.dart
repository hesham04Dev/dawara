// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_mark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialMark _$MaterialMarkFromJson(Map<String, dynamic> json) => MaterialMark(
      mark: (json['mark'] as num).toDouble(),
  d_seasonStudent: SeasonStudent.fromJson(json['student'] as Map<String, dynamic>),
      d_material: Material.fromJson(json['d_material'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaterialMarkToJson(MaterialMark instance) =>
    <String, dynamic>{
      'student': instance.d_seasonStudent,
      'd_material': instance.d_material,
      'mark': instance.mark,
    };
