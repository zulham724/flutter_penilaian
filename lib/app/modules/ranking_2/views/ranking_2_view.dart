import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ranking_2_controller.dart';

import 'package:fl_chart/fl_chart.dart';


class Ranking2View extends GetView<Ranking2Controller> {
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistik'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Statistik',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20
                )
              )
            ),
            Text(
              'Siswa Mengerkakan Soal',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 200),
              height: 30,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 3),
                      child: Text(
                        'Bulan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                        ),
                      ),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Hari',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17
                      )
                    )
                  )
                ],
              ),
            ),

            //Line Chart
            



          ],
        ),
      ),
    );
  }
}
