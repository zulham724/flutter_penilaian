import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  List<int> exampleList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: 120, // Set this height
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
              child: Container(
                  margin: new EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text('AGPAII'), Text('PENILAIAN')],
                          ),
                          Spacer(),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20)),
                            onPressed: () => true,
                            child: Text('Ranking'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20)),
                            onPressed: () => true,
                            child: Text('Paket Soal'),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20)),
                            child: Text('Butir Soal'),
                          ),
                          Spacer(),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20)),
                            child: Text('Filter'),
                          ),
                        ],
                      )
                    ],
                  ))),
        ),
        body: Container(
          margin: new EdgeInsets.all(20),
          child: new ListView.builder(
            itemCount: exampleList.length,
            itemBuilder: (context, index) {
              return new Card(
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    new ListTile(
                      leading: new Icon(Icons.album),
                      title: new Text("The Enchanted Nightingale ${exampleList[index]}"),
                      subtitle:
                          new Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
