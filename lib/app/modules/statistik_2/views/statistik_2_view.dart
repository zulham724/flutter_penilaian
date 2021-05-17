import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistik_2_controller.dart';

class Statistik2View extends GetView<Statistik2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistik & Ranking'),
        centerTitle: false,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 192.5,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 50, top: 20),
                    child: Text(
                      'Ranking',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20
                      )
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 50, top: 20),
                    child: Text(
                      'Statistik',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      )
                    )
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 120,
                  width: 392.5,
                  decoration: BoxDecoration(
                    color: Colors.blue[300]
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue[300],
                          boxShadow: [
                            BoxShadow(color: Colors.blue[700], spreadRadius: 20)
                          ],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100)
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'Butir Soal Paling Banyak Dikerjakan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          )
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 120,
                  width: 392.5,
                  decoration: BoxDecoration(
                    color: Colors.blue[700]
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          boxShadow: [
                            BoxShadow(color: Colors.blue[300], spreadRadius: 20)
                          ],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100)
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'Paket Soal Paling Banyak Dikerjakan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          )
                        )
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
