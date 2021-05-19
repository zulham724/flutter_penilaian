import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          height: 1000,
          width: 1000,
          child: Column(
            children:[
              Container(
                width: 350,
                height: 150,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/bg-card-hasil.png"),
                    fit: BoxFit.fill,  
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
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
                            margin: EdgeInsets.only(top: 20),
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
                                  margin: EdgeInsets.only(left: 10),
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
              ),
              Container(
                width: 350,
                height: 150,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/bg-card-hasil.png"),
                    fit: BoxFit.fill,  
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
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
                            margin: EdgeInsets.only(top: 20),
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
                                  margin: EdgeInsets.only(left: 10),
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
              ),
              Container(
                width: 350,
                height: 150,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/bg-card-hasil.png"),
                    fit: BoxFit.fill,  
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
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
                            margin: EdgeInsets.only(top: 20),
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
                                  margin: EdgeInsets.only(left: 10),
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
              ),
              Container(
                width: 350,
                height: 150,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/bg-card-hasil.png"),
                    fit: BoxFit.fill,  
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
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
                            margin: EdgeInsets.only(top: 20),
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
                                  margin: EdgeInsets.only(left: 10),
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
              ),
              Container(
                width: 350,
                height: 150,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/bg-card-hasil.png"),
                    fit: BoxFit.fill,  
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
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
                            margin: EdgeInsets.only(top: 20),
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
                                  margin: EdgeInsets.only(left: 10),
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
              ),
            ]
          ),
        )      
      ),
    );  
  }
}