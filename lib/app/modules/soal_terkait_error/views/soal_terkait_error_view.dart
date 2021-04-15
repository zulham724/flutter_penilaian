import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/soal_terkait_error_controller.dart';

class SoalTerkaitErrorView extends GetView<SoalTerkaitErrorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoalTerkaitErrorView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SoalTerkaitErrorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
