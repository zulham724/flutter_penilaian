import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ranking_2_controller.dart';

class Ranking2View extends GetView<Ranking2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Ranking2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
