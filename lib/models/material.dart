import 'package:json_annotation/json_annotation.dart';
part 'material.g.dart';

@JsonSerializable()
class Material {
  final int id;
  final String name;
  Material({required this.name, required this.id});

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialToJson(this);
}

//create a view that return the final mark of a student
