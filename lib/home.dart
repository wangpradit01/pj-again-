import 'package:flutter/material.dart';
import 'package:pj/profile.dart';
import 'package:pj/register.dart';
import 'package:pj/login.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState creatrState() => _HomeScreenState();
  

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
class HomeScreen extends StatelessWidget{
 
 const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Diabetes App - HOME'),
        ),
        body: Column(
            // child: Form(
            //     child: Padding(
            //         padding: const EdgeInsets.all(10),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                        Text('HOME',
                            style: TextStyle(
                              
                                fontSize: 24, fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.add), 
                            label: Text("สร้างบัญญชี",style: TextStyle(fontSize: 16)),
                            onPressed: (){
                              Navigator.pushNamed(context, '/register');
                            },
                        )),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.login), 
                            label: Text("เข้าสู่ระบบ",style: TextStyle(fontSize: 16)),
                            onPressed: (){
                              Navigator.pushNamed(context, '/login');
                            },
                        )),
                        //Text("E-MAIL"),
                      //   TextFormField(
                          
                      //     keyboardType: TextInputType.emailAddress,
                      //     // onSaved: (String email) {
                      //     //   Profile profile.email = email;
                      //     // },
                      //     // decoration: InputDecoration(
                      //     //   // border: OutlineInputBorder(),
                      //     //   hintText: 'E-Mail',
                            
                      //     ),
                        
                      //   TextFormField(
                      //     obscureText: true,
                      //     decoration: InputDecoration(
                      //       // border: OutlineInputBorder(),
                      //       hintText: 'Password',
                      //     ),
                      //   ),
                      //   Row(
                      //     crossAxisAlignment:
                      //         CrossAxisAlignment.center, // ?????
                      //     children: [
                      //       TextButton(
                      //         style: ButtonStyle(
                      //           backgroundColor:
                      //               MaterialStateProperty.all<Color>(
                      //                   Color(0xFFF0F0F0)),
                      //           foregroundColor:
                      //               MaterialStateProperty.all<Color>(
                      //                   Colors.blue),
                      //         ),
                      //         onPressed: () {
                      //           Navigator.pushNamed(context, '/register');
                      //         },
                      //         child: Text('Register'),
                      //       ),
                      //       TextButton(
                      //         style: ButtonStyle(
                      //           backgroundColor:
                      //               MaterialStateProperty.all<Color>(
                      //                   Colors.blue),
                      //           foregroundColor:
                      //               MaterialStateProperty.all<Color>(
                      //                   Colors.white),
                      //         ),
                      //         onPressed: () {
                      //           Navigator.pushNamed(context, '/profile');
                      //         },
                      //         child: Text('Log in'),
                             
                          ],
                        )
                      //],
                    //)
                    );
  }
}
