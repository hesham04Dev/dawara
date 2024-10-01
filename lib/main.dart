import 'package:dawara/db/sql.dart';
import 'package:dawara/screens/Index/index.dart';
import 'package:dawara/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'config/app_theme.dart';
import 'db/mysql/connection.dart';

void main() async {
  await dbInit();
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