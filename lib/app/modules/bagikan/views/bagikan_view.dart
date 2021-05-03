import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bagikan_controller.dart';

void main() {
  runApp(MaterialApp(
    home: BagikanView(),
  ));
}

class BagikanView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BagikanView> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bagikan'),
        centerTitle: false,
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
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Text(
                        'Aktifkan untuk menetapkan waktu pengerjaan soal',
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
                      margin: EdgeInsets.only(left: 80, top: 5),
                      height: 30,
                      width: 110,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.timer, size: 20),
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
                      margin: EdgeInsets.only(top: 5, left: 10),
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
                      margin: EdgeInsets.only(left: 80),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Aktifkan untuk menetapkan tenggang hari berlaku',
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    )
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'paket soal seperti soal hanya bisa dikerjakan',
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
                                    child: Text(
                                      'pada hari dan jam tertentu',
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
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'Dari',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      )
                                    )
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 30,
                                    width: 150,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.calendar_today, size: 20),
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
                                    margin: EdgeInsets.only(left: 5),
                                    height: 30,
                                    width: 110,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.access_time_rounded, size: 20),
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
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'Sampai',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 30,
                                    width: 150,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.calendar_today, size: 20),
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
                                      )
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    height: 30,
                                    width: 110,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.access_time_outlined, size: 20),
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
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Text(
                        'Aktifkan untuk mengunci paket soal',
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
            //End Kunci Penilaian
            
            //Pesan untuk Guru dan Siswa
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 60,
                      width: 300,
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
                      ),
                    ),
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
                      )
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      height: 60,
                      width: 300,
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
                      ),
                    )
                  ],
                ),
                Row(
                  children:[
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
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            'sampai telat mengerjakan karena ada batas waktu',
                            style: TextStyle(
                              fontSize: 12
                            ),
                          ),
                        )
                      ],
                    )
                  ]
                )
              ],
            ),
            //End Pesan untuk guru dan siswa
            
            //Button
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      margin: EdgeInsets.only(top: 20, left: 80, bottom: 20),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.blue)
                        ),
                        onPressed: (){},
                        color: Colors.white,
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_sharp, color: Colors.blue, size: 20
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              child: Text(
                                'Preview Soal',
                                style: TextStyle(
                                  color: Colors.blue
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 30,
                      width: 80,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: (){},
                        color: Colors.blue,
                        child: Text(
                          'Bagikan',
                          style: TextStyle(
                            color:Colors.white
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
