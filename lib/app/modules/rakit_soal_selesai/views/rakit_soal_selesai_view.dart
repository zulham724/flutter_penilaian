import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rakit_soal_selesai_controller.dart';

class RakitSoalSelesaiView extends GetView<RakitSoalSelesaiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RakitSoalSelesaiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RakitSoalSelesaiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
