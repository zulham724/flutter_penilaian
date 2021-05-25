import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sunting_pengaturan_controller.dart';

import 'package:intl/intl.dart';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

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
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sunting Pengaturan Soal'),
        ),
        body: Center(
          child: ListView(
            children: [
              
              //Timer
              Column(
                children: [
                  Row(
                    children: [
                      Container(
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
                            margin: EdgeInsets.only(left: 60, top: 10),
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
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Divider(
                          color: Colors.grey,
                          indent: 15,
                          endIndent: 15,
                        )
                      )
                    ],
                  ),
                ],
              ),
              //End Timer
              
              //Tanggal Berlaku
              Column(
                children: [
                  Row(
                    children: [
                      Container(
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
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
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
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'paket soal seperti paket soal hanya bisa dikerjakan',
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
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'pada hari dan jam tertentu',
                                        style: TextStyle(
                                          fontSize: 12
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                                
                              ],
                            ),
                            Column(
                              children:[
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20, top: 5),
                                      child: Text(
                                        'Dari',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12
                                        ),
                                      )
                                    )
                                  ]
                                )
                              ]
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      //height: 30,
                                      width: 177,
                                      child: DateTimeField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.calendar_today, size: 20,),
                                          hintText: 'tanggal',
                                        ),
                                        format: DateFormat('yyyy-MM-dd'),
                                        onShowPicker: (context, currentValue) {
                                          return showDatePicker(
                                            context: context,
                                            firstDate: DateTime(1900),
                                            initialDate: currentValue ?? DateTime.now(),
                                            lastDate: DateTime(2100)
                                          );
                                        },
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5, left: 10),
                                      //height: 30,
                                      width: 165,
                                      child: DateTimeField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.timer_sharp, size: 20),
                                          hintText: '00:00'
                                        ),
                                        format: DateFormat('hh:mm a'),
                                        onShowPicker: (context, currentValue) async {
                                          final TimeOfDay time = await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                                          );
                                          return time == null ? null : DateTimeField.convert(time);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children:[
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20, top: 5),
                                      child: Text(
                                        'Sampai',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12
                                        ),
                                      )
                                    )
                                  ]
                                )
                              ]
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      //height: 30,
                                      width: 177,
                                      child: DateTimeField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.calendar_today, size: 20,),
                                          hintText: 'tanggal',
                                        ),
                                        format: DateFormat('yyyy-MM-dd'),
                                        onShowPicker: (context, currentValue) {
                                          return showDatePicker(
                                            context: context,
                                            firstDate: DateTime(1900),
                                            initialDate: currentValue ?? DateTime.now(),
                                            lastDate: DateTime(2100)
                                          );
                                        },
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5, left: 10),
                                      //height: 30,
                                      width: 165,
                                      child: DateTimeField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.timer_sharp, size: 20),
                                          hintText: '00:00'
                                        ),
                                        format: DateFormat('hh:mm a'),
                                        onShowPicker: (context, currentValue) async {
                                          final TimeOfDay time = await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                                          );
                                          return time == null ? null : DateTimeField.convert(time);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            
                          ],
                        )
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.grey,
                      indent: 15,
                      endIndent: 15,
                    )
                  )
                ],
              ),
              //End Tanggal Berlaku
              
              //Kunci Penilaian
              Column(
                children: [
                  Row(
                    children: [
                      Container(
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
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 60),
                        child: Row(
                          children: [
                            Text(
                              'Aktifkan untuk mengunci paket soal',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 60, top: 5),
                            height: 30,
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.vpn_key, size: 20),
                                hintText: "Kunci Penilaian",
                                contentPadding: EdgeInsets.all(10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue, width: 2)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                  )
                                )
                              )
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Divider(
                          color: Colors.grey,
                          indent: 15,
                          endIndent: 15,
                        )
                      )
                    ],
                  )
                ],
              ),
              //End Kunci Penilaian
              
              //Pesan Untuk Guru dan Siswa
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 10, top: 5),
                        height: 60,
                        width: 330,
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            hintText: "Pesan untuk guru",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2)
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 5),
                        child: Text(
                          'Contoh: Silahkan dilihat jangan lupa like dan komentar',
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 10, top: 5),
                        height: 60,
                        width: 330,
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            hintText: "Pesan untuk siswa",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2)
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              'Contoh: Perhatikan soal dengan baik dan juga jangan',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'sampai telat mengerjakan karena ada batas waktu',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                          ),
                        ],
                        
                      )
                    ],
                  ),
                ],
              ),
              // End Pesan Untuk Guru dan Siswa
              
              // Button
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20, left: 100),
                        height: 40,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.blue)
                          ),
                          color: Colors.white,
                          onPressed: (){},
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_sharp, color: Colors.blue
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 5),
                                child: Column(
                                  children: [
                                    Text(
                                      'Preview',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text(
                                      'Soal',
                                      style: TextStyle(
                                        color: Colors.blue
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10, left: 5, top: 10),
                          height: 40,
                          width: 100,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            color: Colors.blue,
                            onPressed: (){},
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  child: Text(
                                    'Simpan',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ) 
                                ),
                                Text(
                                  'Perubahan',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          )
                        )
                    ],
                  )
                ],
              ),
              //Button
            ],
          ) 
        )
    );
  }
}