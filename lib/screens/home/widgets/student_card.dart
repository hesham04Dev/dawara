import 'package:dawara/widgets/PrimaryContainer.dart';
import 'package:flutter/material.dart';

import '../../../models/material_mark.dart';



class StudentCard extends StatelessWidget {
  final String studentName;
  final List<MaterialMark> marks;
  const StudentCard(
      {super.key, required this.studentName, required this.marks});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(studentName),
        Row(
          children: List.generate(
            marks.length,
            (index) =>
                Text("${marks[index].d_material.d_name}:${marks[index].mark}"),
          ),
        )
      ],
    ));
  }
}
