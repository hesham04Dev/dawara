import 'material.dart';
import 'season.dart';
import 'package:json_annotation/json_annotation.dart';
part 'group.g.dart';

@JsonSerializable()
class Group {
  final int d_id;
  final Season d_season;
  final String d_name;
  Group({
    required this.d_season,
    required this.d_id,
    required this.d_name,
  });
  
  factory Group.fromJson(Map<String, dynamic> json) =>
      _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}

//note admin is a d_group called admin so every d_season we have new d_group called admin
/*class MaterialGroup {
  final Group d_group;
  final Material d_material;
  MaterialGroup({required this.d_material, required this.d_group});
}
not is moved to d_material d_group
*/
//not added to db
// class GivenInGroup {
//   final String description;
//   final String d_date;
//   final Group d_group;
//   final int d_id;
//
//   GivenInGroup(
//       {required this.d_group,
//       required this.description,
//       required this.d_date,
//       required this.d_id});
// }
