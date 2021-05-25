import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';

import '../controllers/bagikan_2_controller.dart';

void main() {
  runApp(MaterialApp(
    home: Bagikan2View(),
  ));
}
 
class Bagikan2View extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<Bagikan2View> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bagikan'),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Switch(
                          value: isSwitched1,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = value;
                              print(isSwitched1);
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
                      Divider(
                        height: 20,
                        color: Colors.grey,
                        indent: 15,
                        endIndent: 15,
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                              print(isSwitched2);
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        )
                      ),
                      Text(
                        'Tanggal Berlaku',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Text(
                          'Aktifkan untuk menetapkan tenggang hari berlaku',
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Text(
                          'paket soal seperti paket soal hanya bisa dikerjakan',
                          style: TextStyle(
                            fontSize: 12
                          ),
                        )
                      )
                    ],
                  ),
                  
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Text(
                          'pada hari dan jam tertentu',
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                      ),
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
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Switch(
                          value: isSwitched3,
                          onChanged: (value) {
                            setState(() {
                              isSwitched3 = value;
                              print(isSwitched3);
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        )
                      ),
                      Text(
                        'Kunci Penilaian',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Text(
                          'Aktifkan untuk mengunci paket soal',
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                      ),
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
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 10),
                    height: 60,
                    width: 350,
                    child: TextField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: "Pesan untuk guru",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        )
                      ),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      'Contoh: Silahkan dilihat jangan lupa like dan komentar'
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 10, top: 10),
                    height: 60,
                    width: 350,
                    child: TextField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: "Pesan untuk siswa",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        )
                      ),
                    )
                  ),
                  Text(
                    'Contoh: Perhatikan soal dengan baik dan juga jangan'
                  ),
                  Text(
                    'sampai telat mengerjakan karena ada batas waktu'
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left:120),
                    child: Row(
                      children:[
                        Container(
                          height: 40,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.blue)
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_rounded, color: Colors.blue
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Preview Soal',
                                    style: TextStyle(
                                      color: Colors.blue
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.white,
                            onPressed: (){},
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 40,
                          width: 100,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            color: Colors.blue,
                            onPressed: (){},
                            child: Text(
                              'Bagikan',
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          )
                        )
                      ]
                    )
                  )
                ],
              )
            ],
          ) 
        )
    );
  }
}