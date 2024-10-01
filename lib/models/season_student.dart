import 'group.dart';
import 'season.dart';
import 'student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'season_student.g.dart';

@JsonSerializable()
class SeasonStudent{
  final Student student;
  final Season season;
  final double paid;
  final double price;
  final Group group;
  SeasonStudent({required this.student, required this.season,required this.paid,required this.price,required this.group});

  factory SeasonStudent.fromJson(Map<String, dynamic> json) =>
      _$SeasonStudentFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonStudentToJson(this);
  
}