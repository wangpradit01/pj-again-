import 'dart:ui';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String gender = "male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetes App - Register'),
      ),
      body: Container(
        child: SafeArea(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Register',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                  TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'Fullname',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'Nickname',
                    ),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        items: <String>['Male', 'Female', 'Otheer']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: (value),
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text("Gender"),
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ],
                  ),

                  //Row(
                  // children: [
                  //   Text('Gender'),
                  //   Expanded(
                  //     child: RadioListTile(
                  //         activeColor: Colors.blue,
                  //         title: Text("Male"),
                  //         value: "male",
                  //         groupValue: gender,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             gender = value.toString();
                  //           });
                  //         }),
                  //   ),
                  //   Expanded(
                  //     child: RadioListTile(
                  //         activeColor: Colors.blue,
                  //         title: Text("Female"),
                  //         value: "female",
                  //         groupValue: gender,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             gender = value.toString();
                  //           });
                  //         }),
                  //   ),
                  // ],
                  //),
                  TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'Age',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'Type of Diabetes',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'E-mail',
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'Comfrim Password',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
