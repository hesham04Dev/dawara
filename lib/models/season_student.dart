import 'group.dart';
import 'season.dart';
import 'student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'season_student.g.dart';

@JsonSerializable()
class SeasonStudent{
  final Student d_student;
  final Season d_season;
  final double d_paid;
  final double d_price;
  final Group d_group;
  SeasonStudent({required this.d_student, required this.d_season,required this.d_paid,required this.d_price,required this.d_group});

  factory SeasonStudent.fromJson(Map<String, dynamic> json) =>
      _$SeasonStudentFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonStudentToJson(this);
  
}