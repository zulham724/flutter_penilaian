import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import '../controllers/butir_soal_controller.dart';

void main() => runApp(ButirSoalView());

class ButirSoalView extends StatelessWidget {
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
              margin: EdgeInsets.only(top: 15),
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
                        margin: EdgeInsets.only(left: 30),
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
                    height: 65,
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
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
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
                      selectedLabelIndex: (index){}, 
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
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 130,
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
                              margin: EdgeInsets.only(top: 10, left: 10),
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
                                Container(
                                  margin: EdgeInsets.only(right: 70),
                                  child: Text(
                                    'Brian Dewangga',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text(
                                          '10 SMA',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                        )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Uraian',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                        )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'LOTS',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                        )
                                      ),
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
                                  fontSize: 12,
                                  color: Colors.grey[600]
                                ),
                              )
                            )
                          ],
                        ),
                        Container(
                          child: Theme(
                            data: ThemeData().copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(

                            ),
                          )
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10, left: 30, right: 30),
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
                              margin: EdgeInsets.only(top: 10, left: 10),
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
                                Container(
                                  margin: EdgeInsets.only(right: 70),
                                  child: Text(
                                    'Brian Dewangga',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text(
                                          '10 SMA',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                        )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Uraian',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                        )
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 5),
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30)
                                        )
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'LOTS',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                        )
                                      ),
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
                                  fontSize: 12,
                                  color: Colors.grey[600]
                                ),
                              )
                            )
                          ],
                        ),
                        Container(
                          child: Theme(
                            data: ThemeData().copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              children: [
                                Container(
                                  height: 200,
                                  width: 900,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20)
                                    )
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 10),
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue[300],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5)
                                              )
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.only(left: 7),
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                                ),
                                              ),
                                            )
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Surat At Tin merupakann surat yang ke ...',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),
                                            )
                                          )
                                        ]
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 10),
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue[300],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5)
                                              )
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.only(left: 7),
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                                ),
                                              ),
                                            )
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Surat At Tin merupakann surat yang ke ...',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),
                                            )
                                          )
                                        ]
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 10),
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue[300],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5)
                                              )
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.only(left: 7),
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                                ),
                                              ),
                                            )
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Surat At Tin merupakann surat yang ke ...',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),
                                            )
                                          )
                                        ]
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10, top: 10),
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.blue[300],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5)
                                              )
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.only(left: 7),
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                                ),
                                              ),
                                            )
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Surat At Tin merupakann surat yang ke ...',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),
                                            )
                                          )
                                        ]
                                      )
                                    ]
                                  ),
                                )
                              ],
                            ),
                          )
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
