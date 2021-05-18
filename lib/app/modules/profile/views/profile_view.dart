import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(ProfileView());

class ProfileView extends StatelessWidget {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
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
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: Container(
            height: 60,
            width: 60,
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
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                '999',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                                ),
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                'Dikerjakan',
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'John Due SP.',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              'Saya merupakan admin CV Ardata',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12
                              )
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 120),
                            child: Row(
                              children:[
                                Text(
                                  'Media. Visit: ',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12
                                  )
                                ),
                                Text(
                                  'ardata.co.id',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12
                                  ),
                                )
                              ]
                            )
                          ),
                        ],
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
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 429,
                width: 392.7,
                decoration: BoxDecoration(
                  color: Colors.blue[200]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 90),
                      height: 210,
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
                                margin: EdgeInsets.only(left: 10, top: 10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: AssetImage('assets/bg-login-2.png'),
                                    fit: BoxFit.fill
                                  )
                                )
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Text(
                                      'Brian Dewangga',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                      )
                                    )
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
                                            Radius.circular(10)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text(
                                            '10 SMA', 
                                            style: TextStyle(
                                              color: Colors.white
                                            )
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
                                            Radius.circular(10)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Ganjil', 
                                            style: TextStyle(
                                              color: Colors.white
                                            )
                                          )
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 130),
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
                                              'Sunting'
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
                                      ),
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
                                                  'Hapus'
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
                                      child: Column(
                                        children:[
                                          Container(
                                            child: Row(
                                              children:[
                                                Icon(
                                                  Icons.share,
                                                  color: Colors.grey[600],
                                                ),
                                                Text(
                                                  'Bagikan Ke Siswa'
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
                                        children:[
                                          Icon(
                                            Icons.share,
                                            color: Colors.grey[600],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    'Bagikan Ke'
                                                  ),
                                                  Text(
                                                    'Latihan Mandiri'
                                                  )
                                                ],
                                              )

                                            ],
                                          )
                                        ]
                                      )
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  'Penilaian Semester Akhir'
                                )
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                height: 100,
                                width: 330,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(40)
                                            )
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(left: 7, top: 3),
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                              ),
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                    Center(
                                      child: Text(
                                        'Arti dari kalimat diatas adalah ...'
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
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 15,
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  '10 Suka',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 10),
                                child: Icon(
                                  Icons.comment,
                                  color: Colors.grey,
                                  size: 15
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  '10 Komentar',
                                  style: TextStyle(
                                    fontSize: 12
                                  )
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 100),
                                child: Text(
                                  '20 April 2020',
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
              )
            ],
          )
        ],
      ),
    );
  }
}
