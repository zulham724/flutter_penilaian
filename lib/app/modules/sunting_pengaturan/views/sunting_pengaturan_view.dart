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
          child: ListView(
            children: [
              
              //Timer
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
                        color: Colors.grey,
                        indent: 15,
                        endIndent: 15,
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
                        margin: EdgeInsets.only(left: 60),
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
                                      margin: EdgeInsets.only(left: 20, top: 5),
                                      height: 30,
                                      width: 170,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: IconButton(
                                            icon: Icon(Icons.calendar_today, size: 17,),
                                            onPressed: (){
                                              showDatePicker(
                                                context: context, 
                                                initialDate: DateTime.now(), 
                                                firstDate: DateTime(2015, 8), 
                                                lastDate: DateTime(2101),
                                              );
                                            },
                                          ),
                                          hintText: "tanggal",
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
                                      margin: EdgeInsets.only(left: 10),
                                      height: 30,
                                      width: 100,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.timer_sharp, size: 20),
                                          hintText: "00:00",
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
                                    )
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
                                      margin: EdgeInsets.only(left: 20, top: 5),
                                      height: 30,
                                      width: 170,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: IconButton(
                                            icon: Icon(Icons.calendar_today, size: 17,),
                                            onPressed: (){
                                              showDatePicker(
                                                context: context, 
                                                initialDate: DateTime.now(), 
                                                firstDate: DateTime(2015, 8), 
                                                lastDate: DateTime(2101),
                                              );
                                            },
                                          ),
                                          hintText: "14/01/2021",
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
                                      margin: EdgeInsets.only(left: 10),
                                      height: 30,
                                      width: 100,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.timer_sharp, size: 20),
                                          hintText: "00:00",
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
                              ],
                            ),
                            
                          ],
                        )
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 15,
                    endIndent: 15,
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
                        margin: EdgeInsets.only(left: 80),
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
                            margin: EdgeInsets.only(left: 80, top: 5),
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
                      Divider(
                        color: Colors.grey,
                        indent: 15,
                        endIndent: 15,
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
                        margin: EdgeInsets.only(left: 20, right: 10),
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