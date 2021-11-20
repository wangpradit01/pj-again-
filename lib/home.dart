import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Diabetes App - Log in'),
        ),
        body: SafeArea(
            child: Form(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('LOG-IN'),
                        TextFormField(
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'E-Mail',
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'Password',
                          ),
                        ),
                        Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.center, // ?????
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFF0F0F0)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                              ),
                              onPressed: () {},
                              child: Text('Register'),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              child: Text('Log in'),
                            ),
                          ],
                        )
                      ],
                    )))));
  }
}
