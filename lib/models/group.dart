import 'material.dart';
import 'season.dart';
import 'package:json_annotation/json_annotation.dart';
part 'group.g.dart';

@JsonSerializable()
class Group {
  final int id;
  final Season season;
  final String name;
  Group({
    required this.season,
    required this.id,
    required this.name,
  });
  
  factory Group.fromJson(Map<String, dynamic> json) =>
      _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}

//note admin is a group called admin so every season we have new group called admin
/*class MaterialGroup {
  final Group group;
  final Material material;
  MaterialGroup({required this.material, required this.group});
}
not is moved to material group
*/
//not added to db
// class GivenInGroup {
//   final String description;
//   final String date;
//   final Group group;
//   final int id;
//
//   GivenInGroup(
//       {required this.group,
//       required this.description,
//       required this.date,
//       required this.id});
// }
