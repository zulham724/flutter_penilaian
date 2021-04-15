import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/soal_terkait_controller.dart';

class SoalTerkaitView extends GetView<SoalTerkaitController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoalTerkaitView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SoalTerkaitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
