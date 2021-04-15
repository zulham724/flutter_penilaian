import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/buat_soal_selesai_controller.dart';

class BuatSoalSelesaiView extends GetView<BuatSoalSelesaiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BuatSoalSelesaiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BuatSoalSelesaiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
