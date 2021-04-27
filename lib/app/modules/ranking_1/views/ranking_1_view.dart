import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ranking_1_controller.dart';

class Ranking1View extends GetView<Ranking1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container( 
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Paket Soal Paling Banyak',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    Text(
                      'Dikerjakan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          
          Column(
            children: [
              Container(
                //margin: EdgeInsets.symmetric(vertical: 15),
                height: 1,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
            ],
          ),

          Column(
            children: [
              Row(
                children: [
                  Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Rank1.png"),
                  )
                ),
              ),
                ],
              )
            ],
          )
          
        ],
      ),
    );
  }
}
