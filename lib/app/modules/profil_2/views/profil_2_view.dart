import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_2_controller.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() => runApp(Profil2View());

class Profil2View extends StatelessWidget {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          title: Text(
          'No Anggota :  1237462283',
          style: TextStyle(
            fontSize: 15
          ),
        ),
        centerTitle: false,
        elevation: 0,
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: Container(
        height: 110,
        width: 110,
        child: FloatingActionButton(
          onPressed: () {},
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-login-2.png'),
                fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(100)
            )
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
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
      body: Column(
        children: [
          
          Row(
            children: [
              Container(
                height: 150,
                width: 392.7,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Row(
                      children:[
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                '999',
                                style: TextStyle(
                                  fontSize: 30,
                                )
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Dikerjakan',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                ),
                              )
                            )
                          ],
                        ),
                      ]
                    ),
                    Center(
                      child: Column(
                        children:[
                          Text(
                            'John Due',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              'Saya merupakan admin CV Ardata',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                            )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Media. Visit : ',
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                              ),
                              Text(
                                'ardata.co.id',
                                style: TextStyle(
                                  color: Colors.blue
                                ),
                              )
                            ],
                          )
                        ]
                      )
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Row(
                            children:[
                              Text(
                                '9',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Paket Soal',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),
                                )
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 150),
                          child: Row(
                            children:[
                              Text(
                                '76',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Butir Soal',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),
                                )
                              )
                            ]
                          ),
                        )
                      ],
                    )
                  ]
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 451,
                width: 392.7,
                decoration: BoxDecoration(
                  color: Colors.blue[200]
                ),
                child: Column(
                  children:[
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blue
                        ),
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
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5, top: 2),
                                          child: Text(
                                            '10 SMA',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3, left: 5),
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 8, top: 2),
                                          child: Text(
                                            'Uraian',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3, left: 5),
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 15, top: 2),
                                          child: Text(
                                            'LOTS',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
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
                            child: Theme(
                              data: ThemeData().copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(),
                            ),
                          )
                        ],
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blue
                        ),
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
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5, top: 2),
                                          child: Text(
                                            '10 SMA',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3, left: 5),
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 8, top: 2),
                                          child: Text(
                                            'Uraian',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3, left: 5),
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 15, top: 2),
                                          child: Text(
                                            'LOTS',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: PopupMenuButton(
                                      color: Colors.grey[350],
                                      itemBuilder: (BuildContext bc) => [
                                        PopupMenuItem(
                                          child: Row(
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
                                          )
                                        ),
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
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
                                        )
                                      ]
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
                                  'Kiamat Sugro dan Kiamat Kubro',
                                  style: TextStyle(
                                    fontSize: 12
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
                    )
                  ]
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
