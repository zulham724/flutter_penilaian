import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ranking_1_controller.dart';

class Ranking1View extends GetView<Ranking1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Ranking1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
