import 'package:flutter/material.dart';
import 'package:pj/buildmenu/drawer.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController? _textEditingController = TextEditingController();
  List<String> foodListOnSearch = [];
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
    'ขนมลา',
    'ข้าวแกง',
    'ข้าวคลุกกะปิ',
    'ข้าวแช่',
    'ข้าวต้ม',
    'ข้าวตังหน้าตั้ง',
    'ข้าวผัด',
    'ข้าวผัดอเมริกัน',
    'ข้าวมันไก่',
    'ข้าวมันส้มตำ',
    'ข้าวสวย',
    'ข้าวเสียโป',
    'ข้าวหน้าเป็ด',
    'ไข่น้ำ',
    'ค้างคาวเผือก',
    'โจ๊ก',
    'ชาไทย',
    'ซอสศรีราชา',
    'ต้มจิ๋ว',
    'ต้มยำ',
    'ต้มยำกุ้ง',
    'ต้มส้ม',
    'น้ำเงี้ยว',
    'น้ำจิ้ม',
    'น้ำพริก',
    'น้ำพริกกะปิ',
    'น้ำพริกลงเรือ',
    'ใบเมี่ยง',
    'ผัดกระเพรา',
    'ผัดขี้เมา',
    'ผัดซีอิ้ว',
    'ผัดไทย',
    'พริกกะเกลือ',
    'พะโล้',
    'แม่โขง',
    'ราดหน้า',
    'ลาบ',
    'ส้มตำ',
    'สะเต๊ะ',
    'สัพแหยก',
    'หมก',
    'หมูแดง',
    'หอยทอด',
    'อาจาด',
    // '',
    // '',
    // '',
    // '',
    // '',
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
              onChanged: (value){
                setState(() {
                  foodListOnSearch = foodList.where((element) => element.contains(value)).toList();
                });
                
              },
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
          
          itemCount: _textEditingController!.text.isNotEmpty? foodListOnSearch.length: foodList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.food_bank),
                  ),
                  SizedBox(width: 10),
                  Text(
                    _textEditingController!.text.isNotEmpty? foodListOnSearch[index]: foodList[index],
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
