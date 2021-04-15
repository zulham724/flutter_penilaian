import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistik_1_controller.dart';

class Statistik1View extends GetView<Statistik1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistik1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Statistik1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
