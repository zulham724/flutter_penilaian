import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/paket_soal/views/paket_soal_view.dart';

import 'package:get/get.dart';

import '../controllers/soal_terkait_controller.dart';

void main() => runApp(MaterialApp(
  home: SoalTerkaitView()
));

class SoalTerkaitView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SoalTerkaitView> {
  bool pilgan = false;
  bool isian = false;
  bool uraian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 667,
              width: 400,
              color: Colors.grey[350],
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                  )
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Soal Terkait',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 220),
                            child: IconButton(
                              icon: Icon(
                                Icons.clear,
                                color: Colors.blue,
                              ),
                              onPressed:(){}
                            )
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 25,
                                width: 230,
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Cari Soal',
                                    contentPadding: EdgeInsets.only(top: 20, left: 10),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20)
                                      )
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ) 
                                  ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                height: 25,
                                width: 80,
                                child: RaisedButton(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20)
                                    )
                                  ),
                                  onPressed: (){},
                                  child: PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)
                                      )
                                    ),
                                    color: Colors.black,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.filter_alt,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'filter',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ],
                                    ),
                                    itemBuilder:  (BuildContext bc) => [
                                      PopupMenuItem(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                              width: 20,
                                              child:DecoratedBox(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.white
                                                  )
                                                ),
                                                child: Checkbox(
                                                  activeColor: Colors.green,
                                                  value: pilgan,
                                                  onChanged: (bool value){
                                                    setState(() {
                                                      pilgan=value;
                                                    });
                                                  },
                                                ),
                                              ) 
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                'Pilgan',
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ) 
                                            ) 
                                          ],
                                        ),
                                      ),
                                      PopupMenuItem(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                              width: 20,
                                              child:DecoratedBox(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.white
                                                  )
                                                ),
                                                child: Checkbox(
                                                  activeColor: Colors.green,
                                                  value: isian,
                                                  onChanged: (bool value){
                                                    setState(() {
                                                      isian=value;
                                                    });
                                                  },
                                                ),
                                              ) 
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                'Isian',
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ) 
                                            ) 
                                          ],
                                        ),
                                      ),
                                      PopupMenuItem(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                              width: 20,
                                              child:DecoratedBox(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.white
                                                  )
                                                ),
                                                child: Checkbox(
                                                  activeColor: Colors.green,
                                                  value: uraian,
                                                  onChanged: (bool value){
                                                    setState(() {
                                                      uraian=value;
                                                    });
                                                  },
                                                ),
                                              ) 
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                'Uraian',
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ) 
                                            ) 
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image: AssetImage('assets/bg-login-2.png'),
                                      fit: BoxFit.fill
                                    )
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 75),
                                          child: Text(
                                            'Brian Dewangga',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5, top: 2),
                                            child: Text(
                                              '10 SMA',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 8, top: 2),
                                            child: Text(
                                              'Uraian',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 10, top: 2),
                                            child: Text(
                                              'LOTS',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    'Kiamat Sugro dan Kiamat Kubro',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  )
                                )
                              ],
                            ),
                            Container(
                              //margin: EdgeInsets.only(right: 150),
                              child: Theme(
                                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  children: [
                                    Container(
                                      //margin: EdgeInsets.only(left: 100),
                                      height: 120,
                                      width: 900,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                        )
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 5, left: 15),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                  )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 5),
                                                          height: 20,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.all(
                                                              Radius.circular(5)
                                                            )
                                                          ),
                                                          child: Container(
                                                            margin: EdgeInsets.only(left: 5),
                                                            child: Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              )
                                                            )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(top: 5, left: 170),
                                                          height: 20,
                                                          child: RaisedButton(
                                                            color: Colors.blue,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(20)
                                                              )
                                                            ),
                                                            onPressed: (){},
                                                            child: Text(
                                                              'Tambahkan',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              ),
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 7),
                                                          child: Text(
                                                            'Surat At Tin merupakan surat yang ke ...',
                                                            style: TextStyle(
                                                              fontSize: 12
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 5, left: 15),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                  )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 5),
                                                          height: 20,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.all(
                                                              Radius.circular(5)
                                                            )
                                                          ),
                                                          child: Container(
                                                            margin: EdgeInsets.only(left: 5),
                                                            child: Text(
                                                              '2',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              )
                                                            )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(top: 5, left: 170),
                                                          height: 20,
                                                          child: RaisedButton(
                                                            color: Colors.blue,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(20)
                                                              )
                                                            ),
                                                            onPressed: (){},
                                                            child: Text(
                                                              'Tambahkan',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              ),
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 7),
                                                          child: Text(
                                                            'Surat At Tin merupakan surat yang ke ...',
                                                            style: TextStyle(
                                                              fontSize: 12
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ), 
                          ],
                        )  
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image: AssetImage('assets/bg-login-2.png'),
                                      fit: BoxFit.fill
                                    )
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 75),
                                          child: Text(
                                            'Brian Dewangga',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5, top: 2),
                                            child: Text(
                                              '10 SMA',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 8, top: 2),
                                            child: Text(
                                              'Uraian',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 10, top: 2),
                                            child: Text(
                                              'LOTS',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    'Kiamat Sugro dan Kiamat Kubro',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  )
                                )
                              ],
                            ),
                            Container(
                              //margin: EdgeInsets.only(right: 150),
                              child: Theme(
                                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  children: [
                                    Container(
                                      //margin: EdgeInsets.only(left: 100),
                                      height: 120,
                                      width: 900,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                        )
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 5, left: 15),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                  )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 5),
                                                          height: 20,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.all(
                                                              Radius.circular(5)
                                                            )
                                                          ),
                                                          child: Container(
                                                            margin: EdgeInsets.only(left: 5),
                                                            child: Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              )
                                                            )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(top: 5, left: 170),
                                                          height: 20,
                                                          child: RaisedButton(
                                                            color: Colors.blue,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(20)
                                                              )
                                                            ),
                                                            onPressed: (){},
                                                            child: Text(
                                                              'Tambahkan',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              ),
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 7),
                                                          child: Text(
                                                            'Surat At Tin merupakan surat yang ke ...',
                                                            style: TextStyle(
                                                              fontSize: 12
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 5, left: 15),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                  )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 5),
                                                          height: 20,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.all(
                                                              Radius.circular(5)
                                                            )
                                                          ),
                                                          child: Container(
                                                            margin: EdgeInsets.only(left: 5),
                                                            child: Text(
                                                              '2',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              )
                                                            )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(top: 5, left: 170),
                                                          height: 20,
                                                          child: RaisedButton(
                                                            color: Colors.blue,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(20)
                                                              )
                                                            ),
                                                            onPressed: (){},
                                                            child: Text(
                                                              'Tambahkan',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              ),
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 7),
                                                          child: Text(
                                                            'Surat At Tin merupakan surat yang ke ...',
                                                            style: TextStyle(
                                                              fontSize: 12
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ), 
                          ],
                        )  
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image: AssetImage('assets/bg-login-2.png'),
                                      fit: BoxFit.fill
                                    )
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 75),
                                          child: Text(
                                            'Brian Dewangga',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5, top: 2),
                                            child: Text(
                                              '10 SMA',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 8, top: 2),
                                            child: Text(
                                              'Uraian',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3, left: 5),
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 10, top: 2),
                                            child: Text(
                                              'LOTS',
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                            ),
                                          )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    'Kiamat Sugro dan Kiamat Kubro',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  )
                                )
                              ],
                            ),
                            Container(
                              //margin: EdgeInsets.only(right: 150),
                              child: Theme(
                                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  children: [
                                    Container(
                                      //margin: EdgeInsets.only(left: 100),
                                      height: 120,
                                      width: 900,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                        )
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 5, left: 15),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                  )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 5),
                                                          height: 20,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.all(
                                                              Radius.circular(5)
                                                            )
                                                          ),
                                                          child: Container(
                                                            margin: EdgeInsets.only(left: 5),
                                                            child: Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              )
                                                            )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(top: 5, left: 170),
                                                          height: 20,
                                                          child: RaisedButton(
                                                            color: Colors.blue,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(20)
                                                              )
                                                            ),
                                                            onPressed: (){},
                                                            child: Text(
                                                              'Tambahkan',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              ),
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 7),
                                                          child: Text(
                                                            'Surat At Tin merupakan surat yang ke ...',
                                                            style: TextStyle(
                                                              fontSize: 12
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 5, left: 15),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                  )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 5),
                                                          height: 20,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.all(
                                                              Radius.circular(5)
                                                            )
                                                          ),
                                                          child: Container(
                                                            margin: EdgeInsets.only(left: 5),
                                                            child: Text(
                                                              '2',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              )
                                                            )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(top: 5, left: 170),
                                                          height: 20,
                                                          child: RaisedButton(
                                                            color: Colors.blue,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(20)
                                                              )
                                                            ),
                                                            onPressed: (){},
                                                            child: Text(
                                                              'Tambahkan',
                                                              style: TextStyle(
                                                                color: Colors.white
                                                              ),
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(left: 5, top: 7),
                                                          child: Text(
                                                            'Surat At Tin merupakan surat yang ke ...',
                                                            style: TextStyle(
                                                              fontSize: 12
                                                            ),
                                                          )
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ), 
                          ],
                        )  
                      ),
                      Checkbox(
                                                  activeColor: Colors.green,
                                                  value: uraian,
                                                  onChanged: (bool value){
                                                    setState(() {
                                                      uraian=value;
                                                    });
                                                  },
                                                ),   
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
