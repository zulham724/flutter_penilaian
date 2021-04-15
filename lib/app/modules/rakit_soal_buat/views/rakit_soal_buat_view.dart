import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rakit_soal_buat_controller.dart';

class RakitSoalBuatView extends GetView<RakitSoalBuatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RakitSoalBuatView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RakitSoalBuatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
