import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import '../controllers/rakit_soal_buat_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_selesai/views/rakit_soal_selesai_view.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_isi/views/rakit_soal_isi_view.dart';

void main() => runApp(RakitSoalBuatView());

class RakitSoalBuatView extends StatelessWidget {
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
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 30),
              child: Row(
                children:[
                  Text(
                    'Rakit Soal',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                    ),
                  )
                ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70, top: 10),
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
                      borderRadius: BorderRadius.circular(100)
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
                    'Isi'
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
            
            //Kolom 1
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                border: Border.all(color: Colors.blue)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_up_rounded, 
                          color: Colors.grey,
                          size: 30,
                        ),
                        onPressed: (){},
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          'Apa Arti dari kalimat diatas...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 60),
                        child: IconButton(
                          icon: const Icon(
                            Icons.delete
                          ),
                          onPressed: (){}
                        )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 13),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(2)
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
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_down_rounded, 
                          color: Colors.blue,
                          size: 30,
                        ),
                        onPressed: (){},
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        child: Text(
                          'Lihat Kunci',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.blue,
                        ), 
                        onPressed: (){}
                      )
                    ],
                  )
                ],
              ),
            ),
            //End Kolom 1
            
            //Kolom 2
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 210,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                border: Border.all(color: Colors.blue)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_up_rounded, 
                          color: Colors.blue,
                          size: 30,
                        ),
                        onPressed: (){},
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          'Apa Arti dari kalimat diatas...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 60),
                        child: IconButton(
                          icon: const Icon(
                            Icons.delete
                          ),
                          onPressed: (){}
                        )
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 13),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(2)
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
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_down_rounded, 
                          color: Colors.blue,
                          size: 30,
                        ),
                        onPressed: (){},
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        child: Text(
                          'Lihat Kunci',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.blue,
                        ), 
                        onPressed: (){}
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'Kunci Jawaban 1',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 320,
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2)
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //End Kolom 2
            
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 70),
                  height: 40,
                  width: 100,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.blue,
                    onPressed: ()=>Get.to(RakitSoalIsiView()),
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      ),
                    ),
                  )
                ),
                Container(
                  child: Row(
                    children:[
                      Container(
                        margin: EdgeInsets.only(top: 70, left: 10),
                        height: 40,
                        width: 140,
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
                            ],
                          ),
                        )
                      )
                    ]
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 70),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: ()=>Get.to(RakitSoalSelesaiView()),
                    color: Colors.blue,
                    child: Text(
                      'Lanjut',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      ),
                    ),
                  ),
                ),
              ],
            ) 
          ],
        )
      ),
    );
  }
}