// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialGroup _$MaterialGroupFromJson(Map<String, dynamic> json) =>
    MaterialGroup(
      d_material: Material.fromJson(json['d_material'] as Map<String, dynamic>),
      d_group: Group.fromJson(json['d_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaterialGroupToJson(MaterialGroup instance) =>
    <String, dynamic>{
      'd_group': instance.d_group,
      'd_material': instance.d_material,
    };
