import 'package:flutter/material.dart';
import 'package:pj/login.dart';
import 'home.dart';
import 'profile.dart';
import 'register.dart';

void main() {
  //runApp(const MyApp());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Diabetes App',
    initialRoute: "/",
    routes: {
      '/': (ctx) => const HomeScreen(),
      '/register': (ctx) => const Register(),
      '/login': (ctx) => const Login(),
      '/profile': (ctx) => const Profile(),
    },
  ));
}
