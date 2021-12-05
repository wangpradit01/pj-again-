import 'package:flutter/material.dart';
import 'package:pj/home.dart';
import 'package:pj/profile.dart';
import '../search.dart';

class MainDraw extends StatefulWidget {
  const MainDraw({Key? key}) : super(key: key);

  @override
  _MainDrawState createState() => _MainDrawState();
}

class _MainDrawState extends State<MainDraw> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Search',
              icon: Icons.search,
              onClick : () => selectedItem(context,0 
            ),
            )],
        ),
      ),
    );
  }
}

selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
Navigator.pushNamed(context, '/search');
    break;
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClick,
}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: 
    Text(
      text,
      style: TextStyle(
        color: color
        ),
    ),
    hoverColor: hoverColor,
    onTap: onClick,
  );
}
