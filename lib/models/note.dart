import 'student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'note.g.dart';

@JsonSerializable()
class Note{
  final int d_id;
  final Student d_student;
  final String description;
  final DateTime d_date;

  Note({required this.d_date,required this.description,required this.d_id,required this.d_student});

  factory Note.fromJson(Map<String, dynamic> json) =>
      _$NoteFromJson(json);
  Map<String, dynamic> toJson() => _$NoteToJson(this);
}