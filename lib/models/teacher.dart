import 'package:json_annotation/json_annotation.dart';
part 'teacher.g.dart';

@JsonSerializable()
class Teacher {
  final int id;
  final String name;
  final String phone;
  Teacher({required this.id, required this.name, required this.phone});
  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
  Map<String, dynamic> toJson() => _$TeacherToJson(this);
}

