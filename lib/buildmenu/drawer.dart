import 'package:flutter/material.dart';
import 'package:pj/home.dart';
import 'package:pj/profile.dart';
import '../search.dart';
import 'package:pj/alert.dart';

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
      child: ListView(children: <Widget>[
        const SizedBox(height: 16),
        buildMenuItem(
            text: 'Profile',
            icon: Icons.person,
            onClick: () => Navigator.pushNamed(context, '/profile')
            //selectedItem(context,0
            ),
        const SizedBox(height: 16),
        buildMenuItem(
            text: 'Alert',
            icon: Icons.add_alert,
            onClick: () => Navigator.pushNamed(context, '/alert')
            //selectedItem(context,0
            ),
        const SizedBox(height: 16),
        buildMenuItem(
            text: 'Search',
            icon: Icons.search,
            onClick: () => Navigator.pushNamed(context, '/search')
            ),
            const SizedBox(height: 16),
        buildMenuItem(
            text: 'Dairy',
            icon: Icons.book,
            onClick: () => Navigator.pushNamed(context, '/dairy')
            ),
            const SizedBox(height: 16),
        buildMenuItem(
            text: 'Graph',
            icon: Icons.pie_chart_outline_rounded,
            onClick: () => Navigator.pushNamed(context, '/graph')
            ),
            const SizedBox(height: 16),
        buildMenuItem(
            text: 'Setting',
            icon: Icons.settings,
            onClick: () => Navigator.pushNamed(context, '/setting')),
      ]
          //selectedItem(context,0
          ),
    ));
  }
}

selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
//Navigator.pushNamed(context, '/search');
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
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    hoverColor: hoverColor,
    onTap: onClick,
  );
}
