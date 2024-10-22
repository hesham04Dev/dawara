import 'package:json_annotation/json_annotation.dart';
part 'student.g.dart';

@JsonSerializable()
class Student{
  final int d_id;
  final String d_name;
  final int d_age;
  final String d_phone;
  final String d_address;
  final String? d_problem;
  Student({ required this.d_phone,
   required this.d_address, this.d_problem, required this.d_id,required this.d_name,required this.d_age});

  factory  Student.fromJson(Map<String, dynamic> json) {
    return _$StudentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StudentToJson(this);
}
//create view that return d_age of student
