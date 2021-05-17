import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_paket_soal_3_controller.dart';

class PreviewPaketSoal3View extends GetView<PreviewPaketSoal3Controller> {
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
                        //padding: EdgeInsets.only(bottom: 50),
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
                        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
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

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextField(
                    //maxLines: 8,
                    decoration: 
                    InputDecoration(
                      hintText: "Jawaban",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ) 
                    ),
                  ),
                ),
                

                //Bottom Bawah
                
                //Bottom Kemabali
                Container(
                  child: Row(
                    children:[
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 20),
                        height: 30,
                        width: 110,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          onPressed: (){},
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                'Kembali',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              )
                            ],
                          )
                        ),
                      ),


                      //Bottom 1/5
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17
                              ),
                            ),
                            Text(
                              '/',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17
                              ),
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),

                      //Bottom Lanjut
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        height: 30,
                        width: 110,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          onPressed: (){},
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Lanjut',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ),
                      )
                    ]
                  ),
                )
              ]
            ),
          ]
        )
      ),
    );
  }
}
