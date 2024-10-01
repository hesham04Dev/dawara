import 'group.dart';
import 'material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'material_group.g.dart';

@JsonSerializable()
class MaterialGroup {
  final Group group;
  final Material material;
  MaterialGroup({required this.material, required this.group});

  factory MaterialGroup.fromJson(Map<String, dynamic> json) =>
      _$MaterialGroupFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialGroupToJson(this);
}
