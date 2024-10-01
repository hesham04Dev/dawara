import 'season.dart';

import 'package:json_annotation/json_annotation.dart';
part 'balance.g.dart';

@JsonSerializable()
class Balance{
  final int d_id;
  final Season d_season;
  final double d_amount;
  final String description;
  Balance({required this.d_id,required this.d_season,required this.d_amount,required this.description});

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);
  Map<String, dynamic> toJson() => _$BalanceToJson(this);
}
//we will create a view for this table to show the balance of the d_season 
//we need to create a trigger that increase the money by
// the d_paid d_amount on insert of new student (add the d_paid d_amount)
// on sutdent update we see the old d_paid and the new d_paid and add the deferrence
// the admin d_teacher or some other have acces to this data 
// the admin only have a page to add a payment or to increase the Money
/*
-------not related-----
var title = Text("title");
var appBar = AppBar(title:title);
var usernameInput = TextField();
var passwordInput = TextField();
var loginBtn= TextButton(onPress:(){
  //any thing
},child:Text("login"));
var children = [
  usernameInput,
  passwordInput,
  loginBtn]; 
var body = ListView(children:children);
var scaffold = Scaffold(appBar:appBar,body:body);
//easy to understand every thing have a d_name
//or 
Scaffold(
  appBar:AppBar(title:Text("title")),
  body:ListView(
    children:[
      TextField(),
      TextField(),
      TextButton(onPress:(){ },child:Text("login"))
    ]
  )
);
// show the hirechaty 
return scaffold;*/
