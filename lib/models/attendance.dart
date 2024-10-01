import 'season_student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'attendance.g.dart';

@JsonSerializable()
class Attendance{
  final int d_id;
  final SeasonStudent d_seasonStudent;
  final DateTime d_date;
  Attendance({required this.d_date,
    required this.d_id,required this.d_seasonStudent});

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceToJson(this);
}