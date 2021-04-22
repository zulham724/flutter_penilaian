import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_paket_soal_controller.dart';

class PreviewPaketSoalView extends GetView<PreviewPaketSoalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preview Paket Soal'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children:[
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 50),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios_outlined, size: 15),
                          color: Colors.white,
                          onPressed: (){},
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30
                        ),
                      ),
                      Text(
                        '/5',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios_outlined, size: 15),
                          color: Colors.white,
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children:[
                      Text(
                        'Surat ke 110 merupakan surat ...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ]
                  ),
                ),

                //Jawaban A
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.only(bottom: 20),
                  height: 50,
                  width: 330,
                  color: Colors.blue[100],
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 50,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children:[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 3),
                            ),
                            Text(
                              'a',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Al-Ikhlas',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //Jawaban B
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.only(bottom: 20),
                  height: 50,
                  width: 330,
                  color: Colors.blue[100],
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 50,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children:[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 3),
                            ),
                            Text(
                              'b',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Al-Ikhlas',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                
                //Jawaban C
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.only(bottom: 20),
                  height: 50,
                  width: 330,
                  color: Colors.blue[100],
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 50,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children:[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 3),
                            ),
                            Text(
                              'c',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Al-Ikhlas',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //Jawaban D
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.only(bottom: 20),
                  height: 50,
                  width: 330,
                  color: Colors.green,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 50,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                          ),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children:[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 3),
                            ),
                            Text(
                              'd',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Al-Ikhlas',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ]
        )
      ),
    );
  }
}
