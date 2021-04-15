import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistik_2_controller.dart';

class Statistik2View extends GetView<Statistik2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistik2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Statistik2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
