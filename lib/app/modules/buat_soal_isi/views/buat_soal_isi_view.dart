import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/buat_soal_isi_controller.dart';

class BuatSoalIsiView extends GetView<BuatSoalIsiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BuatSoalIsiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BuatSoalIsiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
