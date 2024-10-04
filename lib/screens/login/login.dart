import 'package:dawara/db/sql.dart';
import 'package:dawara/functions/common.dart';
import 'package:dawara/models/teacher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mysql_client/mysql_client.dart';
import '../Index/index.dart';



class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Login({super.key});
  @override
  Widget build(BuildContext context) {
    late String phone;
    late String password;

    final phoneField =  TextFormField(
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        hintText: "Phone"
      ),
      onSaved: (phoneNo) {
        phone = phoneNo??"";
        // Save it
        //TODO store it in sqlite
      },
    );
    final passwordField = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          hintText:"Password",

        ),
        onSaved: (val) {

          password = encryptPassword(val??"");


        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Text(
                    "Sign In",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        phoneField,
                        passwordField,
                        ElevatedButton(
                          onPressed: () async{
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              //TODO get result from db if true store it

                             const  String query = "SELECT * from d_teacher where d_phone = ? and d_password =?";
                             List<Teacher> teachers = await DSql.instance().select(query,params:[phone,password],fromJson: (json) => Teacher.fromJson(json),);

                              if(teachers.isEmpty){
                               DSql.offlineInstance.connection
                                   .execute("INSERT OR REPLACE INTO d_setting values(?,?,?)",params:[1,"teacherId",teachers[0].d_id]);
                              }
                              goToWithReplacement(context, (context) => const Index(),);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFF00BF6D),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("Sign in"),
                        ),
                        const SizedBox(height: 16.0),
                        TextButton(
                          onPressed: () {
                           //TODO
                          },
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .color!
                                  .withOpacity(0.64),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
