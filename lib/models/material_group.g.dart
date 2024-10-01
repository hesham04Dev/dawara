// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialGroup _$MaterialGroupFromJson(Map<String, dynamic> json) =>
    MaterialGroup(
      material: Material.fromJson(json['material'] as Map<String, dynamic>),
      group: Group.fromJson(json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaterialGroupToJson(MaterialGroup instance) =>
    <String, dynamic>{
      'group': instance.group,
      'material': instance.material,
    };
