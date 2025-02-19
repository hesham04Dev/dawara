import 'package:dawara/functions/common.dart';
import 'package:dawara/screens/home/provider/student_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/home.dart';
import '../login/login.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {

      // TODO: Get it from SQLite
      var res = offlineDb().select("SELECT d_val from d_setting where d_name='teacherId'");
      bool isLogin = res==null?false :true;
      if (isLogin) {
        goToWithReplacement(context, (context) => ChangeNotifierProvider(
            create: (context) => StudentProvider(),
            child: const Home()));

      } else {
        //Sql = mysql
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  Login()),
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

