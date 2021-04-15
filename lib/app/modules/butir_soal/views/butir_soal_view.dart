import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/butir_soal_controller.dart';

class ButirSoalView extends GetView<ButirSoalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButirSoalView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ButirSoalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
