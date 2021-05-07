import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/soal_terkait_controller.dart';

class SoalTerkaitView extends GetView<SoalTerkaitController> {
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
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 25,
                              width: 230,
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 15
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Cari Soal',
                                  contentPadding: EdgeInsets.only(top: 20, left: 10),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20)
                                    )
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ) 
                                ),
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              height: 25,
                              width: 80,
                              child: RaisedButton(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20)
                                  )
                                ),
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.filter_alt,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'filter',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        )
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: AssetImage('assets/bg-login-2.png'),
                                    fit: BoxFit.fill
                                  )
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 75),
                                        child: Text(
                                          'Brian Dewangga',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 3, left: 5),
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[200],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5, top: 2),
                                          child: Text(
                                            '10 SMA',
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3, left: 5),
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[200],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 8, top: 2),
                                          child: Text(
                                            'Uraian',
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                          ),
                                        )
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3, left: 5),
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[200],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                          )
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10, top: 2),
                                          child: Text(
                                            'LOTS',
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                          ),
                                        )
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  'Kiamat Sugro dan Kiamat Kubro',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                )
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 150),
                            child: Theme(
                              data: ThemeData().copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 100),
                                    height: 100,
                                    width: 500,
                                    color: Colors.grey[300],
                                  )
                                ],
                              ),
                            ),
                          ), 
                        ],
                      )  
                    ),    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
