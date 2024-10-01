// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_mark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialMark _$MaterialMarkFromJson(Map<String, dynamic> json) => MaterialMark(
      mark: (json['mark'] as num).toDouble(),
      student: SeasonStudent.fromJson(json['student'] as Map<String, dynamic>),
      material: Material.fromJson(json['material'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaterialMarkToJson(MaterialMark instance) =>
    <String, dynamic>{
      'student': instance.student,
      'material': instance.material,
      'mark': instance.mark,
    };
