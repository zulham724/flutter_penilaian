import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../controllers/paket_soal_controller.dart';

void main() => runApp(PaketSoalView());

class PaketSoalView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex;
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.blue,
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.add),
            title: Text('Add'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.bar_chart),
            title: Text('Statistik'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          'AGPAII',
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, bottom: 10),
                        child: Text(
                          'Penilaian',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 167),
                    height: 60,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50)
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.emoji_events_outlined,
                            color: Colors.yellow,
                          ),
                        ),
                        Container(
                          child: Text(
                            'Ranking',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: FlutterToggleTab(
                    width: 50,  
                    borderRadius: 30,  
                    height: 30,  
                    selectedBackgroundColors: [Colors.blue], 
                    unSelectedBackgroundColors: [Colors.white],
                    selectedTextStyle: TextStyle(  
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                    unSelectedTextStyle: TextStyle(  
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                    labels: ["Paket Soal", "Butir Soal"], 
                    selectedLabelIndex: (index){}
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20)
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.filter_alt,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        'Filter',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 220,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
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
                                      margin: EdgeInsets.only(right: 50),
                                      child: Text(
                                        'Brian Dewangga',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5, left: 3),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 13, top: 2),
                                        child: Text(
                                          'Ganjil',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5, right: 40),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5, top: 2),
                                        child: Text(
                                          '10 SMA',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 50, bottom: 20),
                                  child: PopupMenuButton(
                                    color: Colors.grey[350],
                                    itemBuilder: (BuildContext bc) => [
                                      PopupMenuItem(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.edit,
                                                  color: Colors.grey[600],
                                                ),
                                                Text(
                                                  'Sunting',
                                                  style: TextStyle(
                                                    color: Colors.grey[600]
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              height: 1,
                                              width: 500,
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                              ),
                                            ),
                                          ]   
                                        )
                                      ),
                                      PopupMenuItem(
                                        child: Column(
                                          children:[
                                            Container(
                                              //margin: EdgeInsets.only(bottom: 20),
                                              child: Row(
                                                children:[
                                                  Icon(
                                                    Icons.delete,
                                                    color: Colors.grey[600],
                                                  ),
                                                  Text(
                                                    'Hapus',
                                                    style: TextStyle(
                                                      color: Colors.grey[600]
                                                    ),
                                                  )
                                                ]
                                              )
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              height: 1,
                                              width: 500,
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                      PopupMenuItem(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.share,
                                              color: Colors.grey[600]
                                            ),
                                            Text(
                                              'Bagikan Ke Siswa',
                                              style: TextStyle(
                                                color: Colors.grey[600]
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                                'Penilaian Semester Akhir',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                                ),
                              )
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 100,
                          width: 310,
                          decoration: BoxDecoration(
                            color: Colors.grey[200]
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(50)
                                      )
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Arti dari kalimat diatas adalah'
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  Text(
                                    '10 Suka',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.comment,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Text(
                                    '10 Komentar',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80, top: 5),
                              child: Text(
                                '20 April 2020',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                )
                              )
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 210,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      ),
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
                                      margin: EdgeInsets.only(right: 50, top: 10),
                                      child: Text(
                                        'Brian Dewangga',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5, left: 3),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 13, top: 2),
                                        child: Text(
                                          'Ganjil',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5, right: 40),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5, top: 2),
                                        child: Text(
                                          '10 SMA',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Penilaian Semester Akhir',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                                ),
                              )
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 100,
                          width: 310,
                          decoration: BoxDecoration(
                            color: Colors.grey[200]
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(50)
                                      )
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Arti dari kalimat diatas adalah'
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  Text(
                                    '10 Suka',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.comment,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Text(
                                    '10 Komentar',
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80, top: 5),
                              child: Text(
                                '20 April 2020',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                )
                              )
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
