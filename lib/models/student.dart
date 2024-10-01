import 'season.dart';
import 'group.dart';
import 'package:json_annotation/json_annotation.dart';
part 'student.g.dart';

@JsonSerializable()
class Student{
  final int id;
  final String name;
  final int age;
  final String phone;
  final String address;
  final String? problem;
  Student({ required this.phone,
   required this.address, this.problem, required this.id,required this.name,required this.age});

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}
//create view that return age of student
