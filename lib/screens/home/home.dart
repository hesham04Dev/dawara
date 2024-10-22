import 'package:dawara/db/sql.dart';
import 'package:dawara/functions/common.dart';
import 'package:dawara/screens/home/provider/student_provider.dart';

import 'package:dawara/screens/home/widgets/student_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/material_mark.dart';
import '../../models/student.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    List<Student> students = context.watch<StudentProvider>().students??[];

    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],
      ),
      drawer: Drawer(
        child: Column(
          children: [],
        ),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index){
        List<MaterialMark> marks = DSql.instance().select("Select * from d_material_mark where d_season_student = ?",params:[students[index].d_id],fromJson: (json) => MaterialMark.fromJson(json) ,);
        //TODO get marks for each student in the group of this teacher

        return StudentCard(studentName: students[index].d_name, marks:[]) ;

        },),
    );
  }
}
