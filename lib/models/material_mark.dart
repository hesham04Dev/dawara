import 'package:dawara/models/student.dart';

import 'material.dart';
import 'season_student.dart';
import 'package:json_annotation/json_annotation.dart';
part 'material_mark.g.dart';

@JsonSerializable()
class MaterialMark {
  final Student d_student;
  final Material d_material;
  final double d_mark;
  MaterialMark({required this.d_mark, required this.d_student, required this.d_material});

  factory MaterialMark.fromJson(Map<String, dynamic> json) =>
      _$MaterialMarkFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialMarkToJson(this);
}

// d_material can be something like behaviour, quran, ahadith, sira,....
//or we can make a view for each d_material
// may have the specilized d_teacher a d_teacher for each d_material
// we can do it in a beetter way by making the d_material
// abstract and create a class(table in db) for each d_material
// but like that we should have this d_material
// (in this d_season we dont have a mark for each d_material but i prefer it)
