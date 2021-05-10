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
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
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
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 1,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/Rank1.png',
                  height: 50,
                  width: 50,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Paket Soal 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Text(
                    'John Due'
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 150),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                )
              ),
              Text(
                '1540',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ) 
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 1,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/rank2.png',
                  height: 50,
                  width: 50
                )
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Paket Soal 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                  Text(
                    'John Due'
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 150),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                )
              ),
              Text(
                '1540',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 1,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/Rank3.png',
                  height: 50,
                  width: 50,
                )
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Paket Soal 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    'John Due'
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 150),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                )
              ),
              Text(
                '1540',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 1,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey
            )
          ),
          Container(
            height: 60,
            width: 400,
            color: Colors.blue[200],
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    '#4',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    )
                  )
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, top: 10),
                      child: Text(
                        'Paket Soal 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'John Due',
                      )
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 150),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                  ),
                ),
                Text(
                  '1540',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  '#2',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue
                  ),
                )
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 10),
                    child: Text(
                      'Paket Soal 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'John Due'
                    )
                  )
                  
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 150),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                )
              ),
              Text(
                '1540',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 1,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  '#2',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue
                  ),
                )
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text(
                      'Paket Soal 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'John Due'
                    )
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 150),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                )
              ),
              Text(
                '1540',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              )   
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 1,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          )
        ]
      ),
    );
  }
}
