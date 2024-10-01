import 'package:json_annotation/json_annotation.dart';
part 'material.g.dart';

@JsonSerializable()
class Material {
  final int d_id;
  final String d_name;
  Material({required this.d_name, required this.d_id});

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialToJson(this);
}

//create a view that return the final mark of a student
