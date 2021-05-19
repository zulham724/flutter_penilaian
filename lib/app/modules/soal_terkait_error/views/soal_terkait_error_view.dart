import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/soal_terkait_error_controller.dart';

class SoalTerkaitErrorView extends GetView<SoalTerkaitErrorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey[350],
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: 655,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'Soal Terkait',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 220),
                          child: IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: Colors.blue,
                            ),
                            onPressed:(){}
                          )
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 70, bottom: 20),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blue,
                              width: 5
                            )
                          ),
                          child: Container(
                            margin: EdgeInsets.only(top: 25),
                            child: Column(
                              children:[
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(100)
                                      )
                                    ),
                                  ]
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(90 / 360),
                                    child: Text(
                                      '(',
                                      style: TextStyle(
                                        fontSize: 47,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  )
                                )
                              ]
                            )
                          )
                        ),
                        Text(
                          'MAAF',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          )
                        ),
                        Text(
                          'Belum ada soal yang berkaitan dengan',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'kompetensi dan kelas yang anda inginkan',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
