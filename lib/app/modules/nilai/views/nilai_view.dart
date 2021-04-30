import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nilai_controller.dart';

class NilaiView extends GetView<NilaiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue
        ),
        title: Text(
          'Hasil Bambang Jaya',
          style: TextStyle(
            color: Colors.blue
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            
            //Kolom 1
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                        )
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
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
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Bambang Jaya',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20)
                        )
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Nilai',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children:[
                                Text(
                                '10',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                ),
                              ),
                              Text(
                                '/',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                                ),
                              ),
                              Text(
                                '30',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                                ),
                              ),
                              ]
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ), // End Kolom 1

            //Kolom 2
            Column(
              children:[
                Container(
                  color: Colors.white,
                  height: 550,
                  width: 2000,
                  child: Row(
                    children:[
                      
                      //Lingkaran Nomer
                      Column(
                        children:[
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                height: 20,
                                width: 3,
                                decoration: BoxDecoration(
                                  color: Colors.blue
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red[200],
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2
                                  )
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
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
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                height: 20,
                                width: 3,
                                decoration: BoxDecoration(
                                  color: Colors.blue
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green[200],
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2
                                  )
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                height: 20,
                                width: 3,
                                decoration: BoxDecoration(
                                  color: Colors.blue
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[200],
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  )
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]
                      ), //End Lingkaran Nomer

                      //Kotak warna
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(20)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0 , 3),
                                  blurRadius: 5.0
                                )
                              ]
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children:[
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'Soal 1',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:130),
                                        child: Text(
                                          'Belum Selesai',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      )
                                    ]
                                  )
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.green[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(20)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0 , 3),
                                  blurRadius: 5.0
                                )
                              ]
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'Soal 2',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 170),
                                        child: Text(
                                          '10 / 10',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      )
                                    ]
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            height: 400,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(20)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0 , 3),
                                  blurRadius: 5.0
                                )
                              ]
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              child: Column(
                                children:[
                                  Row(
                                    children: <Widget>[ 
                                      Text(
                                        'Soal 3',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 150),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Belum Dinilai',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      )
                                      
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          'Arti dari kalimat diatas adalah'
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          'Kunci',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 3),
                                    child: TextField(
                                      maxLines: 2,
                                      decoration: InputDecoration(
                                        hintText: "Jawab",
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey, width: 2)
                                        )
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          'Jawaban',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 3),
                                    child: TextField(
                                      maxLines: 2,
                                      decoration: InputDecoration(
                                        hintText: "Jawab",
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey, width: 2)
                                        )
                                      )
                                    )
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 30, top: 40),
                                              alignment: Alignment.topCenter,
                                              height: 30,
                                              width: 50,
                                              child: TextField(
                                                maxLines: 1,
                                                decoration: InputDecoration(
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.grey, width: 2)
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      bottomLeft: Radius.circular(10)
                                                    )
                                                  )
                                                )
                                              ),
                                            )
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 40),
                                                height: 30,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)
                                                  )
                                                ),
                                                child: Container(
                                                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                                  child: Text(
                                                    '/10',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 40, left: 20),
                                                child: RaisedButton(
                                                  shape: RoundedRectangleBorder(
                                                   borderRadius: new BorderRadius.circular(10)
                                                  ),
                                                  color: Colors.blue,
                                                  onPressed: (){},
                                                  child: Text(
                                                    'Submit'
                                                  ),
                                                )
                                              )
                                              
                                            ],
                                          )
                                        ],
                                        
                                       
                                      ),
                                      
                                    ],
                                  )
                                  
                                    
                                  
                                ]
                              ),
                            ),
                          )
                        ],
                      ), //End Kotak Warna
                    ]
                  ),
                )
              ]
            ), // End KOlom 2
          ],
        ),
      ),
    );
  }
}
