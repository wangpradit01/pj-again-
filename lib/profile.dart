import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:pj/buildmenu/drawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late File myFile;
  Future<void> selectImg() async {
    try {
      var myImg = await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        myFile = myImg as File;
      });
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Diabetes App - Profile'),
        ),
        drawer: MainDraw(), //เมนูแถบซ้ายบน ดึงมาใช้ได้เลย
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text('Profile',
                              style: TextStyle(
                                
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                
                TextButton(
                    onPressed: () {
                      selectImg();
                    },
                    child: Text('เพิ่มรูป')),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},

            // child: Stack(
            //   children: <Widget>[
            //     Positioned(
            //         right: 30,
            //         bottom: 30,
            child: Stack(children: <Widget>[
              CircularButton(
                  color: Colors.blue,
                  width: 60,
                  height: 60,
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onClick: () {
                    Navigator.pushNamed(context, '/profile');
                  })
            ]))
        //   ],
        // )
        );

    //);
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final VoidCallback onClick;

  CircularButton(
      {required this.color,
      required this.width,
      required this.height,
      required this.icon,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, enableFeedback: true, onPressed: onClick),
    );
  }
}

// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Diabetes App - Profile'),
//         ),
//         body: SafeArea(child: Text('Profile')));
//   }
// }
