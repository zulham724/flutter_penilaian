import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistik_1_controller.dart';

class Statistik1View extends GetView<Statistik1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistik & Ranking'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children:[
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 187,
                      decoration: BoxDecoration(
                        color: Colors.blue
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Text(
                          'Ranking',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 187,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Text(
                          'Statistik',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20
                          ),
                        ),
                      ),
                    )
                  ]
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.blue[300],
                      height: 90,
                      width: 375,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 90,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50)
                              ),
                              border: Border.all(
                                color: Colors.blue[700],
                                width: 5
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Butir Soal Paling Banyak Dikerjakan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                              )
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.blue[700],
                      height: 90,
                      width: 375,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 90,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50)
                              ),
                              border: Border.all(
                                color: Colors.blue[300],
                                width: 5
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Butir Soal Paling Banyak Dipakai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                              )
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.blue[300],
                      height: 90,
                      width: 375,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 90,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50)
                              ),
                              border: Border.all(
                                color: Colors.blue[700],
                                width: 5
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Butir Soal Paling Banyak Dikerjakan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                              )
                            )
                          )
                        ],
                      ),
                    )
                  ],
                )

              ] 
            )
          ],
        ),
      ),
    );
  }
}
