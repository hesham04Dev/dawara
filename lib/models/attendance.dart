import 'season_student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'attendance.g.dart';

@JsonSerializable()
class Attendance{
  final int id;
  final SeasonStudent student;
  final DateTime date;
  Attendance({required this.date,
    required this.id,required this.student});

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceToJson(this);
}