import 'package:flutter/material.dart';
import 'package:pj/alert.dart';
import 'package:pj/dairy.dart';
import 'package:pj/graph.dart';
import 'package:pj/login.dart';
import 'package:pj/search.dart';
import 'package:pj/setting.dart';

import 'home.dart';
import 'profile.dart';
import 'register.dart';
import 'alert.dart';
import 'search.dart';
import 'setting.dart';


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
      '/search' : (ctx) => const Search(),
      '/alert' : (ctx) => const Alert(),
      '/dairy' : (ctx) => const Dairy(),
      '/graph' : (ctx) => const Graph(),
      '/setting' : (ctx) => const Setting(),
    },
  ));
}
