import 'package:dawara/models/group.dart';
import 'package:dawara/models/material.dart';

import 'season.dart';
import 'teacher.dart';
import 'package:json_annotation/json_annotation.dart';
part 'teacher_role.g.dart';

@JsonSerializable()
class TeacherRole {
  final int d_id;
  final Season d_season;
  final Teacher d_teacher;
  final Group? d_group;
  final Material? d_material;
  TeacherRole(
      {required this.d_teacher,
        this.d_group,
        this.d_material,
        required this.d_id,
        required this.d_season});

  factory TeacherRole.fromJson(Map<String, dynamic> json) =>
      _$TeacherRoleFromJson(json);
  Map<String, dynamic> toJson() => _$TeacherRoleToJson(this);
}
