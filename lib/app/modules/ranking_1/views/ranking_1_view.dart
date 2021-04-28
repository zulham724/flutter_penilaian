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
      body: Wrap(
        children: [
          Wrap(
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('assets/Rank1.png'),
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Paket Soal 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'John Due'
                              )
                            ],
                          )
                        ),
                        Wrap(
                            children:[
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 150),
                                child: Row(
                                  children:[
                                     Icon(
                                      Icons.star,
                                      color: Colors.yellow[800]
                                    ),
                                    
                                    Text(
                                      '1234',
                                    )
                                  ]
                                )
                              )
                            ]
                          )
                        
                      ],
                    )
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Rank2.png')
                            )
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Paket Soal 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'John Due'
                              )
                            ],
                          )
                        ),
                        
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 170),
                          child: Row(
                            children:[
                              Icon(
                                Icons.star,
                                color: Colors.yellow[800]
                              ),
                              Text(
                                '1234'
                              )
                            ]
                          )
                        ),
                      ],
                    )
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Rank3.png')
                            )
                          ),
                        ),
                        Container(
                          
                          child: Column(
                            children: [
                              Text(
                                'Paket Soal 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'John Due'
                              )
                            ],
                          )
                        ),
                        
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 170),
                          child: Row(
                            children:[
                              Icon(
                                Icons.star,
                                color: Colors.yellow[800]
                              ),
                              Text(
                                '1234'
                              )
                            ]
                          )
                        ),
                      ],
                    )
                  ],
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
