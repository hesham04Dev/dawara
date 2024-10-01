import 'group.dart';
import 'material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'material_group.g.dart';

@JsonSerializable()
class MaterialGroup {
  final Group d_group;
  final Material d_material;
  MaterialGroup({required this.d_material, required this.d_group});

  factory MaterialGroup.fromJson(Map<String, dynamic> json) =>
      _$MaterialGroupFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialGroupToJson(this);
}
