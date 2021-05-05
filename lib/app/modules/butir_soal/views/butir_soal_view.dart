import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: Colors.blue,
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(6)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              title: Text("Add")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.stacked_bar_chart,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              title: Text("Menu")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.stacked_bar_chart,
                color: Colors.white,
              ),
              title: Text("Hasil")),
           BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text("Profil"))
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100,
              width: 400,
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
                    margin: EdgeInsets.only(bottom: 35, left: 153),
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
              color: Colors.white,
              height: 50,
              width: 400,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey[200],
                        width: 2
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30)
                      )
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 3, left: 20),
                          child: Text(
                            'Paket Soal',
                            style: TextStyle(
                              color: Colors.blue
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9),
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              'Butir Soal',
                              style: TextStyle(
                                color: Colors.white
                              )
                            )
                          ),
                        )
                      ],
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
              height: 455,
              width: 400,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 120,
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
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 150, top: 5),
                              child: IconButton(
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                onPressed: (){}
                              )
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 290,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      ),
                    ),
                    child: Column(
                      children:[
                        Container(
                          height: 120,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 150, top: 5),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.keyboard_arrow_up_outlined,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                      onPressed: (){}
                                    )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                      )
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5, top: 5),
                                    child: Text(
                                      'Surat At Tin merupakan surat yang ke ...',
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
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                      )
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5, top: 5),
                                    child: Text(
                                      'Surat At Tin merupakan surat yang ke ...',
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
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                      )
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5, top: 5),
                                    child: Text(
                                      'Surat At Tin merupakan surat yang ke ...',
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
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                      )
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5, top: 5),
                                    child: Text(
                                      'Surat At Tin merupakan surat yang ke ...',
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        )
                      ]
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
