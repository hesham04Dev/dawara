import 'package:json_annotation/json_annotation.dart';
part 'teacher.g.dart';

@JsonSerializable()
class Teacher {
  final int d_id;
  final String d_name;
  final String d_phone;
  Teacher({required this.d_id, required this.d_name, required this.d_phone});
  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
  Map<String, dynamic> toJson() => _$TeacherToJson(this);
}

