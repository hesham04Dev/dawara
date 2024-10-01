import 'season_student.dart';
import 'travel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'travel_student.g.dart';

@JsonSerializable()
class TravelStudent{
  final SeasonStudent d_seasonStudent;
  final Travel travel;
  TravelStudent({required this.d_seasonStudent, required this.travel});

  factory TravelStudent.fromJson(Map<String, dynamic> json) =>
      _$TravelStudentFromJson(json);
  Map<String, dynamic> toJson() => _$TravelStudentToJson(this);
}