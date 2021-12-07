import 'package:flutter/material.dart';
import 'package:pj/buildmenu/drawer.dart';

class Setting extends StatefulWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Diabetes App - Setting'),
          
    ),
    drawer: MainDraw());
    
  }
}