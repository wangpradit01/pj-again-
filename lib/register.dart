import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pj/profile.dart';

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
//5555555
                  // Row(
                  //   children: [
                  //     Text('Gender', style: TextStyle(fontSize: 10)),
                  //     Expanded(
                  //       child: RadioListTile(
                  //           activeColor: Colors.blue,
                  //           title: Text(
                  //             "Male",
                  //             style: TextStyle(fontSize: 10),
                  //           ),
                  //           value: "male",
                  //           groupValue: gender,
                  //           onChanged: (value) {
                  //             setState(() {
                  //               gender = value.toString();
                  //             });
                  //           }),
                  //     ),
                  //     Expanded(
                  //       child: RadioListTile(
                  //           activeColor: Colors.blue,
                  //           title:
                  //               Text("Female", style: TextStyle(fontSize: 10)),
                  //           value: "female",
                  //           groupValue: gender,
                  //           onChanged: (value) {
                  //             setState(() {
                  //               gender = value.toString();
                  //             });
                  //           }),
                  //     ),
                  //     Expanded(
                  //       child: RadioListTile(
                  //           activeColor: Colors.blue,
                  //           title: Text("Other"),
                  //           value: "other",
                  //           groupValue: gender,
                  //           onChanged: (value) {
                  //             setState(() {
                  //               gender = value.toString();
                  //             });
                  //           }),
                  //     ),
                  //   ],
                  // ),

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
                    obscureText: true,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      // Navigator.pushNamed(context, '/register');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(),
                          ));
                    },
                    child: Text('SUMMIT'),
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
