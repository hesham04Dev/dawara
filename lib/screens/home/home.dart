import 'package:dawara/db/sql.dart';
import 'package:dawara/functions/common.dart';

import 'package:dawara/screens/home/widgets/student_card.dart';
import 'package:flutter/material.dart';

import '../../models/material_mark.dart';
import '../../models/student.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> students = /*listFromJson(DSql.instance().select(""
        "select * from d_stu"),Student);*/
    [];
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
       // List<MaterialMark> marks = DSql.instance().select("Select * from d_material_mark where d_season_student = ?",[students[index].id]);
        //TODO get marks for each student in the group of this teacher

        return StudentCard(studentName: students[index].name, marks:[]) ;

        },),
    );
  }
}
