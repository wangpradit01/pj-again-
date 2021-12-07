import 'package:flutter/material.dart';
import 'package:pj/buildmenu/drawer.dart';

class Dairy extends StatefulWidget {
  const Dairy({ Key? key }) : super(key: key);

  @override
  _DairyState createState() => _DairyState();
}

class _DairyState extends State<Dairy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Diabetes App - Dairy'),
          
    ),
    drawer: MainDraw());
    
  }
}