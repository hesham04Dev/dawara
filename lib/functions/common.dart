import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../db/sql.dart';

void goToWithReplacement(BuildContext context,WidgetBuilder builder){
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: builder),
  );
}
void goTo(BuildContext context,WidgetBuilder builder){
  Navigator.push(
    context,
    MaterialPageRoute(builder: builder),
  );
}
String encryptPassword(String password){
  var bytes = utf8.encode(password); // data being hashed
  var digest = sha256.convert(bytes);
  print(digest);
  return digest.toString();
}

Future<bool> isThereInternet() async{
  bool result = await InternetConnection().hasInternetAccess;
  return result;
}

offlineDb(){
  return DSql.offlineInstance.connection;
}
onlineDb(){
  return DSql.onlineInstance?.connection;
}
listFromJson(List list,model){
  var instances =[];
  for(var item in list){
     instances.add(model.fromJson(item));
  }
  return instances;
}