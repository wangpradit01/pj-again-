import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
  
}

class _ProfileState extends State<Profile> {
  late File myFile;
  Future<void> selectImg() async{
  try{
    var myImg = await ImagePicker(
      
    ).pickImage(source: ImageSource.gallery);
    setState((){
      myFile = myImg as File;
    });
  } catch (e) {print('error: $e');}
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetes App - Profile'),),
        body: SafeArea(child: Column(
          children: [
            Text('Profile'),
            TextButton(onPressed: (){selectImg();}, child: Text('เพิ่มรูป'))
          ],
        ),)
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
