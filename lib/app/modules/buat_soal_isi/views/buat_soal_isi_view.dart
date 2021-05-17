import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import '../controllers/Buat_soal_isi_controller.dart';

void main() => runApp(BuatSoalIsiView());

class BuatSoalIsiView extends StatelessWidget {
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 30),
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
                    'Isi',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Buat',
                    style: TextStyle(
                      color: Colors.grey
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
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Kelas',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 130),
                      child: Text(
                        'Tipe Soal',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  child: Row(  
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5)
                            ),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration.collapsed(hintText: ''),
                            focusColor: Colors.red,
                            style: TextStyle(
                              color: Colors.black
                            ),
                            iconEnabledColor: Colors.black,
                            items: <String>[
                              'aaaaa',
                              'bbbbb',
                              'ccccc'
                            ]. map<DropdownMenuItem<String>>((String value) 
                            {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style:TextStyle(color:Colors.black),),
                              );
                            }). toList(),
                            hint: Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                "10 SMA",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ),
                            onChanged: (String value){
                              setState(() {
                              });
                            },
                          ),
                        )
                      ), 
                      Container(
                        height: 40,
                        width: 150,
                        margin: EdgeInsets.only(left: 10),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5)
                            ),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration.collapsed(hintText: ''),
                            focusColor: Colors.red,
                            style: TextStyle(
                              color: Colors.black
                            ),
                            iconEnabledColor: Colors.black,
                            items: <String>[
                              'aaaaa',
                              'bbbbb',
                              'ccccc'
                            ]. map<DropdownMenuItem<String>>((String value) 
                            {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style:TextStyle(color:Colors.black),),
                              );
                            }). toList(),
                            hint: Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                "Uraian",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ),
                            onChanged: (String value){
                              setState(() {
                              });
                            },
                          ),
                        )
                      ),     
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Kompetensi Dasar',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(  
                    children: [
                      Container(
                        height: 40,
                        width: 330,
                        //margin: EdgeInsets.only(left: 10),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5)
                            ),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration.collapsed(hintText: ''),
                            focusColor: Colors.red,
                            style: TextStyle(
                              color: Colors.black
                            ),
                            iconEnabledColor: Colors.black,
                            items: <String>[
                              'aaaaa',
                              'bbbbb',
                              'ccccc'
                            ]. map<DropdownMenuItem<String>>((String value) 
                            {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style:TextStyle(color:Colors.black),),
                              );
                            }). toList(),
                            hint: Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                "Kompetensi",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ),
                            onChanged: (String value){
                              setState(() {
                              });
                            },
                          ),
                        )
                      ),    
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Kompetensi',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 40,
                  width: 330,
                  child: TextField(
                    //maxLines: 8,
                    decoration: InputDecoration(
                      hintText: "Kompetensi Dasar",
                      hintStyle: TextStyle(
                        fontSize: 17
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        )
                      )     
                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Materi',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 40,
                  width: 330,
                  child: TextField(
                    //maxLines: 8,
                    decoration: InputDecoration(
                      hintText: "Kejujuran",
                      hintStyle: TextStyle(
                        fontSize: 17
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        )
                      )     
                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Indikator',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 40,
                  width: 330,
                  child: TextField(
                    //maxLines: 8,
                    decoration: InputDecoration(
                      hintText: "Indikator",
                      hintStyle: TextStyle(
                        fontSize: 17
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        )
                      )     
                    ),
                  ),
                ),

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.bottomRight,
                        child: Wrap(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
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
                          ]
                        )
                    )  
                  ],
                )
              ],
            ),    
          ],
        )
      ),
    );
  }
}