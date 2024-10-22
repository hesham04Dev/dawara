import 'package:dawara/db/sql.dart';
import 'package:dawara/screens/Index/index.dart';
import 'package:dawara/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'config/app_theme.dart';
import 'db/mysql/connection.dart';
import 'functions/common.dart';
import 'models/student.dart';

void main() async {
  await dbInit();
  var x = await DSql.onlineInstance!.select(
      "select * from current_student ",fromJson: (json) {
    return Student.fromJson(json);});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: buildTheme(Colors.green,false),
      home: const Index(),
    );
  }
}
//TODO maybe we have err in the lojic of sing in since we send the hashed data
//todo  not get the user and match the password or somthing like this
//TODO move the sql to the models ask gpt before


//TODO edit the marks and final marks to get the last seson



/*
* first in db create season
*  then create group
* then assign material to the group
* if there a missing material add it
* then add season student
* if there is a new student add it in student
* then add teacher role
* if there is a new teacher add it in teacher
* note the admin have group null and material null in the teacher role
* 
* */