import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    title: 'Diabetes App',
    initialRoute: '/',
    routes: {
      '/': (ctx) => const Home(),
      // '/register': (ctx) => const Register(),
      '/profile': (ctx) => const Profile(),
    },
  ));
}
