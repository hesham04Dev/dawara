
import 'dart:developer';

import 'package:dawara/db/mysql/connection.dart';
import 'package:dawara/db/sqlite/connection.dart';

import '../functions/common.dart';

abstract class DSql {
   static late final DSql? onlineInstance;
   static late final DSql offlineInstance;
   static DSql instance(){
     if(onlineInstance == null) {
       return offlineInstance;
     } else {
       return onlineInstance!;
     }
   }
   late final dynamic connection;
   void execute(String query, [
     List<Object?>? params,

   ]);
   dynamic select(String query, [
     List<Object?>? params,

   ]);


   void show(resultSets);

}
dbInit() async{
  await MySql.init();
  await Sqlite.init();
  /*if(await isThereInternet()){
   await MySql.init();
  }else{
   await Sqlite.init();
  }*/

}