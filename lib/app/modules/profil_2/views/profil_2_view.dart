import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_2_controller.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

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
                        Text(
                          '9',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
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
                height: 373,
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
