import 'package:flutter/material.dart';
import 'package:pj/buildmenu/drawer.dart';

class Alert extends StatefulWidget {
  const Alert({ Key? key }) : super(key: key);

  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Diabetes App - Alert'),
          
    ),
    drawer: MainDraw());
  }
}