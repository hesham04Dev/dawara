import 'package:dawara/models/student.dart';
import 'package:flutter/cupertino.dart';

import '../../../db/sql.dart';

class StudentProvider with ChangeNotifier{
   StudentProvider()  {
     _loadStudents().then((value) {
       print(value);
       print(value.runtimeType);
     _students = value;
     notifyListeners();
     },);
  }
   Future<List<Student>> _loadStudents() async {
     // Fetch the list of dynamic objects from the query
     List<dynamic> rawList = await DSql.onlineInstance!.select(
       "select * from current_student",
       fromJson: (json) {
         return Student.fromJson(json);
       },
     );

     // Ensure the result is properly converted to List<Student>
     return rawList.map((item) => item as Student).toList();
   }

  Future<void> studentUpdated() async{
  _students = await _loadStudents();
  notifyListeners();
  }

  List<Student>? _students;
  get students => _students;
  

}