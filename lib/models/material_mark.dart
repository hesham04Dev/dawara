import 'material.dart';
import 'season_student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'material_mark.g.dart';

@JsonSerializable()
class MaterialMark {
  final SeasonStudent student;
  final Material material;
  final double mark;
  MaterialMark({required this.mark, required this.student, required this.material});

  factory MaterialMark.fromJson(Map<String, dynamic> json) =>
      _$MaterialMarkFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialMarkToJson(this);
}

// material can be something like behaviour, quran, ahadith, sira,....
//or we can make a view for each material
// may have the specilized teacher a teacher for each material
// we can do it in a beetter way by making the material
// abstract and create a class(table in db) for each material
// but like that we should have this material
// (in this season we dont have a mark for each material but i prefer it)
