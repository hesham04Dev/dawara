import 'student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'note.g.dart';

@JsonSerializable()
class Note{
  final int id;
  final Student student;
  final String description;
  final DateTime date;

  Note({required this.date,required this.description,required this.id,required this.student});

  factory Note.fromJson(Map<String, dynamic> json) =>
      _$NoteFromJson(json);
  Map<String, dynamic> toJson() => _$NoteToJson(this);
}