import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(HasilView());

class HasilView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hasil View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hasil'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //floatingActionButton: FloatingActionButton(
        //onPressed: () {},
        //child: Icon(Icons.person),
        //backgroundColor: Colors.blue,
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
                Icons.bar_chart,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.bar_chart,
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
        child: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          height: 1000,
          width: 1000,
          child: Column(
            children:[
              Container(                
                child: Container(
                  width: 350,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/bg-card-hasil.png"),
                      fit: BoxFit.fill,  
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Row(
                            children: [
                              Text(
                                'Penilaian Akhir Tahun',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        
                          Row(
                            children: [
                              Text(
                                'Kelas : 10 SMA'
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Text(
                                'Mapel : PAI'
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 40),
                                alignment: Alignment.topLeft,
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue[100],
                                ),
                                child: Row(
                                  children:[
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      child: Row(
                                        children:[
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(top: 5),
                                                    child: Text(
                                                      'Kode Soal',
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ) 
                                                  ),
                                                  Text(
                                                    'aaaaa'
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10),
                                            child: IconButton(
                                              icon: const Icon(Icons.copy),
                                              color: Colors.grey[600],
                                              onPressed: (){},
                                            ),
                                          ),
                                        ] 
                                      ),
                                    ),
                                  ]
                                ),
                              )
                            ],
                          )
                        ]
                      ),
                    ),
                  )
                ), 
              
                Container(
                  child: Container(
                    width: 350,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/bg-card-hasil.png"),
                        fit: BoxFit.fill,
                      )
                    ),
                    child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Row(
                          children: [
                            Text(
                              'Penilaian Akhir Tahun',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        
                        Row(
                          children: [
                            Text(
                              'Kelas : 10 SMA'
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              'Mapel : PAI'
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 40),
                              alignment: Alignment.topLeft,
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[100],
                              ),
                              child: Row(
                                children:[
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children:[
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(top: 5),
                                                  child: Text(
                                                    'Kode Soal',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black
                                                    ),
                                                  )
                                                ),
                                                Text(
                                                  'aaaaa'
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),

                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 10),
                                          child: IconButton(
                                            icon: const Icon(Icons.copy),
                                            color: Colors.grey[600],
                                            onPressed: (){},
                                          ),
                                        ),
                                      ] 
                                    ),
                                  ),
                                ]
                              ),
                            )
                          ],
                        )
                      ]
                    ),
                    ),
                  ) 
                ),
                Container(
                  child: Container(
                    width: 350,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/bg-card-hasil.png"),
                        fit: BoxFit.fill,
                      )
                    ),
                    child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Row(
                          children: [
                            Text(
                              'Penilaian Akhir Tahun',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        
                        Row(
                          children: [
                            Text(
                              'Kelas : 10 SMA'
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              'Mapel : PAI'
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 40),
                              alignment: Alignment.topLeft,
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[100],
                              ),
                              child: Row(
                                children:[
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children:[
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(top: 5),
                                                  child: Text(
                                                    'Kode Soal',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'aaaaa'
                                                ),
                                              ],
                                            ),
                                            
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 10),
                                          child: IconButton(
                                            icon: const Icon(Icons.copy),
                                            color: Colors.grey[600],
                                            onPressed: (){},
                                          ),
                                        ),
                                      ] 
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ],
                        )
                      ]
                    ),
                    ),
                  ) 
                ),  
            ]
          ),
        )
      ),
    );
  }
}