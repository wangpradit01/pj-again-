import 'package:flutter/material.dart';
import 'package:pj/buildmenu/drawer.dart';

class Graph extends StatefulWidget {
  const Graph({ Key? key }) : super(key: key);

  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Diabetes App - Graph'),
          
    ),
    drawer: MainDraw());
    
  }
}