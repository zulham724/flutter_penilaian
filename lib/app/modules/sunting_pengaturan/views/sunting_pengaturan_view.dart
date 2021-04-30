import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sunting_pengaturan_controller.dart';

void main() {
  runApp(MaterialApp(
    home: SuntingPengaturanView(),
  ));
}
 
class SuntingPengaturanView extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<SuntingPengaturanView> {
  bool isSwitched = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sunting Pengaturan Soal'),
        ),
        body: Center(
          child: Column(
            children: [
              
              //Kolom 1
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        )
                      ),
                      Text(
                        'Timer',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 60),
                        child: Text(
                          'Aktifkan untuk menetapkan waktu pengerjaan soal',
                          style: TextStyle(
                            fontSize: 12
                          ),
                        )
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 80, top: 10),
                            height: 30,
                            width: 110,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.timer, size: 20,),
                                hintText: "Timer",
                                contentPadding: EdgeInsets.all(10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue, width: 2)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                  )
                                )
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              'dalam menit',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                            )
                          )
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                        indent: 15,
                        endIndent: 15,
                      )
                    ],
                  ),
                ],
              ),
              //End Kolom 1
              
              //Kolom 2
              Column(
                children: [
                  Row(
                    children: [
                      //Switch
                    ],
                  )
                ],
              ),
              //End Kolom 2
            ],
          ) 
        )
    );
  }
}