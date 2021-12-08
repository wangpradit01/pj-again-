import 'package:flutter/material.dart';
import 'package:pj/buildmenu/drawer.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController? _textEditingController = TextEditingController();
  List<String> foodList = [
    'ก๋วยเตี๋ยว',
    'ก๋วยเตี๋ยวคั่วไก่',
    'ก๋วยเตี๋ยวปากหม้อ',
    'ก๋วยเตี๋ยวเรือ',
    'กุนเชียง',
    'แกงกระด้าง',
    'แกงกะหรี่',
    'แกงเขียวหวาน',
    'แกงจีนจ๊วน',
    'แกงบวน',
    'แกงบุ่มไบ่',
    'แกงป่า',
    'แกงมัสมั่น',
    'แกงเลียง',
    'แกงส้ม',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(30)),
            child: TextField(
              onChanged: (value){},
              controller: _textEditingController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Search'),
            ),
          ),
        ),
        drawer: MainDraw(),
        body: ListView.builder(
          
          itemCount: foodList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.food_bank),
                  ),
                  SizedBox(width: 10),
                  Text(foodList[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            );
          },
        ));
  }
}
