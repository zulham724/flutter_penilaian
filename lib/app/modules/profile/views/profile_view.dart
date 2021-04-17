import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter_application_1/app/modules/profil_2/views/profil_2_view.dart';

void main() => runApp(ProfileView());

class ProfileView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'No Anggota : 1237462283',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'No Anggota : 12376283'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //floatingActionButton: FloatingActionButton(
        //onPressed: () {},
        //child: Icon(Icons.add),
        //backgroundColor: Colors.red,
      //),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 510,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  height: 150,
                  width: 510,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.blue[100],
                  height: 305,
                  width: 510,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            color: Colors.white,
                            height: 190,
                            width: 450,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                //Gambar Profil
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100.0),
                                          image: DecorationImage(
                                            image: AssetImage("assets/bg-login-2.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ]
                                  ),
                                ), //End Gambar profil

                                //Nama & Button
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Brian Dewangga',
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: new BorderRadius.circular(20)
                                              ),
                                              onPressed: () => true,
                                              color: Colors.blue,
                                              child: Text(
                                                '10 SMA', 
                                                style: TextStyle(
                                                color: Colors.white
                                                ),
                                              ), 
                                            ),
                                            RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: new BorderRadius.circular(20)
                                              ),
                                              onPressed: () => true,
                                              color: Colors.blue,
                                              child: Text(
                                                'Ganjil', 
                                                style: TextStyle(
                                                color: Colors.white
                                                ),
                                              ), 
                                            ),
                                          ]
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ), //End Nama & Button

                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                                  child: IconButton(
                                    icon: const Icon(Icons.more_vert),
                                    onPressed: (){},
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ]
                      )
                    ]
                  ),
                )
              ],
            )
          ]
        ),
        
      ),
    );
  }
}