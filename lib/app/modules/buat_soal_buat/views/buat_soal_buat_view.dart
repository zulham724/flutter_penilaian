import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import '../controllers/buat_soal_buat_controller.dart';

void main() => runApp(BuatSoalBuatView());

class BuatSoalBuatView extends StatelessWidget {
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
  int _selection = 0;
  selectJawab(int jawabSelected) {
       setState(() {
       _selection = jawabSelected;
          });
         }
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children:[
                  Text(
                    'Buat Soal',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                    ),
                  )
                ]
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                children:[
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ]
              )
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 75),
                  child: Text(
                    'Isi',
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Buat',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'Selesai',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 170,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 13)
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_up_rounded,
                          color: Colors.grey,
                        ),
                        onPressed: (){},
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(
                            color: Colors.blue
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5)
                          )
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            '1'
                          ),
                        )
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.blue,
                        ),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete
                        ),
                        onPressed: (){},
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        height: 25,
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12
                          ),
                          decoration: InputDecoration(
                            hintText: "Soal",
                            contentPadding: EdgeInsets.only(top: 10, left: 10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)
                            )
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 190, top: 5),
                        child: Text(
                          'Kunci Jawaban',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                        height: 70,
                        width: 300,
                        child: TextField(
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 12
                          ),
                          decoration: InputDecoration(
                            hintText: "Kunci Jawaban 1",
                            contentPadding: EdgeInsets.only(top: 10, left: 10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)
                            )
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 140),
                        child: Text(
                          'Tambah Kunci Jawaban',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 220,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 13)
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_up_rounded,
                          color: Colors.grey,
                        ),
                        onPressed: (){},
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(
                            color: Colors.blue
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5)
                          )
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            '1'
                          ),
                        )
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.blue,
                        ),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete
                        ),
                        onPressed: (){},
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        height: 25,
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12
                          ),
                          decoration: InputDecoration(
                            hintText: "Soal",
                            contentPadding: EdgeInsets.only(top: 10, left: 10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)
                            )
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 190, top: 5),
                        child: Text(
                          'Pilihan Jawaban',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30, top: 5),
                        child: Column(
                          children:[
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selection = 1;
                                    });
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 90),
                                        height: 40,
                                        width: 150,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Radio(
                                            focusColor: Colors.white,
                                            groupValue: _selection,
                                            onChanged: selectJawab,
                                            value: 1,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              color: _selection == 1 ? Colors.green[300] : Colors.grey[50],
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10)
                                              )
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.only(top: 5, left: 10),
                                              child: Text(
                                                'Kunci Jawaban 1'
                                              )
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ), 
                                IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.grey,
                                  ),
                                  onPressed: (){},
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selection = 2;
                                    });
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 90),
                                        height: 40,
                                        width: 150,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Radio(
                                            focusColor: Colors.white,
                                            groupValue: _selection,
                                            onChanged: selectJawab,
                                            value: 2,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              color: _selection == 2 ? Colors.green[300] : Colors.grey[50],
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10)
                                              )
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.only(top: 5, left: 10),
                                              child: Text(
                                                'Kunci Jawaban 2'
                                              )
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ), 
                                IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.grey,
                                  ),
                                  onPressed: (){},
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selection = 3;
                                    });
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 90),
                                        height: 40,
                                        width: 150,
                                        
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Radio(
                                            focusColor: Colors.white,
                                            groupValue: _selection,
                                            onChanged: selectJawab,
                                            value: 3,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              color: _selection == 3 ? Colors.green[300] : Colors.grey[50],
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10)
                                              )
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.only(top: 5, left: 10),
                                              child: Text(
                                                'Kunci Jawaban 3'
                                              )
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ), 
                                IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.grey,
                                  ),
                                  onPressed: (){},
                                )
                              ],
                            )
                          ]
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 150, top: 5),
                        child: Text(
                          'Tambah Pilihan',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 40),
                  height: 30,
                  width: 70,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.blue,
                    onPressed: (){},
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10),
                  height: 30,
                  width: 130,
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
                          Icons.add,
                          color: Colors.blue,
                        ),
                        Text(
                          'Tambah Soal',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        )
                      ]
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 10),
                  height: 30,
                  width: 70,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.blue,
                    onPressed: (){},
                    child: Text(
                      'Lanjut',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
