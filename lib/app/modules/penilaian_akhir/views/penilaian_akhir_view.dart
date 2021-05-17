import 'package:flutter/material.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import 'package:get/get.dart';

import '../controllers/penilaian_akhir_controller.dart';


void main() => runApp(PenilaianAkhirView());

class PenilaianAkhirView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '',),
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
            top: Radius.circular(
                16)), //border radius doesn't work when the notch is enabled.
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
                Icons.stacked_bar_chart,
                color: Colors.white,
              ),
              title: Text("Hasil")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.menu,
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
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 24),
                  height: 50,
                  width: 392.5,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          size: 25,
                        ),
                        onPressed: (){},
                      ),
                      Text(
                        'Kode soal : ask3453',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 150),
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
                                    color: Colors.grey[600]
                                  ),
                                  Text(
                                    'Hapus',
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
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.blue,
                  height: 80,
                  width: 392.5,
                  child: Column(
                    children: [
                      Row(
                        children:[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Penilaian Akhir Tahun',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ]
                      ),
                      Row(
                        children:[
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              '10 SMA',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ]
                      ),
                      Row(
                        children:[
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'PAI',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ]
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 287,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        )
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  'Siswa',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: VerticalDivider(
                              color: Colors.white,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  'Nilai Max',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40, top: 5),
                                child: Text(
                                  '70',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40, top: 5),
                                child: Text(
                                  'Rata Rata',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        )
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Icon(Icons.copy),
                              onPressed: (){},
                            ),
                          ),
                          Container(
                            child: Text(
                              'asfd213d'
                            ),
                          )
                        ],
                      ),
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
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'Nilai Siswa',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ) 
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      height: 40,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2
                        )
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage('assets/bg-login-2.png'),
                                fit: BoxFit.fill
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Bambang Jaya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 160),
                            child: Text(
                              '90',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      height: 40,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2
                        )
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage('assets/bg-login-2.png'),
                                fit: BoxFit.fill
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Bambang Jaya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 160),
                            child: Text(
                              '90',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      height: 40,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2
                        )
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage('assets/bg-login-2.png'),
                                fit: BoxFit.fill
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Bambang Jaya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 160),
                            child: Text(
                              '90',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      height: 40,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.red,
                          width: 2
                        )
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage('assets/bg-login-2.png'),
                                fit: BoxFit.fill
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Bambang Jaya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 160, top: 5),
                            child: Column(
                              children: [
                                Text(
                                  'Belum',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),
                                ),
                                Text(
                                  'Dinilai',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      height: 40,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.red,
                          width: 2
                        )
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage('assets/bg-login-2.png'),
                                fit: BoxFit.fill
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Bambang Jaya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 160, top: 5),
                            child: Column(
                              children: [
                                Text(
                                  'Belum',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),
                                ),
                                Text(
                                  'Dinilai',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}