import 'package:dawara/models/group.dart';
import 'package:dawara/models/material.dart';

import 'season.dart';
import 'teacher.dart';
import 'package:json_annotation/json_annotation.dart';
part 'teacher_role.g.dart';

@JsonSerializable()
class TeacherRole {
  final int id;
  final Season season;
  final Teacher teacher;
  final Group? group;
  final Material? material;
  TeacherRole(
      {required this.teacher,
        this.group,
        this.material,
        required this.id,
        required this.season});

  factory TeacherRole.fromJson(Map<String, dynamic> json) =>
      _$TeacherRoleFromJson(json);
  Map<String, dynamic> toJson() => _$TeacherRoleToJson(this);
}
