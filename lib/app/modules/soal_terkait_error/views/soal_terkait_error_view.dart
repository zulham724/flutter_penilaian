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
              height: 667,
              width: 400,
              color: Colors.grey[350],
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: 300,
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
                    Row(
                      children: [
                        Container(
                          
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          child: Text(
                            'MAAF',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            )
                          )
                        ),
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
