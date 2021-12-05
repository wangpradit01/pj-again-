import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOG-IN")),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          
                        TextFormField(
                          
                          
                          //obscureText: true,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'E-Mail',
                            
                          ), keyboardType: TextInputType.emailAddress,
                          // onSaved: (String email) {
                          //   profile.email = email;
                          // },
                          ),
                  
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'Password',
                          ),
                        ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center, // ?????
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFF0F0F0)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text('Register'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: Text('Log in'),
                      ),
                      
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
