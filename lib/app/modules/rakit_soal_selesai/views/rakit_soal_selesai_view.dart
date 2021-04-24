import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import '../controllers/rakit_soal_selesai_controller.dart';

void main() => runApp(RakitSoalSelesaiView());

class RakitSoalSelesaiView extends StatelessWidget {
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

      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                    'Buat'
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    'Selesai',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                )
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children:[
                  Text(
                    'Apakah anda yakin diterbitkan?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'Pastikan soal yang anda buat sudah benar',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
                ]  
              )
            ),

            //Button Preview Paket Soal
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue[200]),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          color: Colors.white
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove_red_eye_rounded),
                              color: Colors.blue,
                              onPressed: (){},
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                children:[
                                  Text(
                                    'PREVIEW',
                                    style: TextStyle(
                                      color: Colors.blue
                                    ),
                                  ),
                                  Text(
                                    'PAKET SOAL',
                                    style: TextStyle(
                                      color: Colors.blue
                                    ),
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
                //End Button Preview Paket Soal
                
                //Button Terbitkan
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.blue[200]),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          color: Colors.blue
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.file_upload),
                              color: Colors.white,
                              onPressed: (){},
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                children:[
                                  Text(
                                    'TERBITKAN',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),
                                ]
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //End Button Terbitkan
              ],
            ),

            //Button Back
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ),
                  ), 
                ],
              )
            ),
            //End Button Back
          ],
        )
      ),
    );
  }
}