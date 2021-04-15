import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/buat_soal_buat_controller.dart';

class BuatSoalBuatView extends GetView<BuatSoalBuatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BuatSoalBuatView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BuatSoalBuatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
