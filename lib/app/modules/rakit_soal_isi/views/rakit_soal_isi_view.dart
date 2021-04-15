import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rakit_soal_isi_controller.dart';

class RakitSoalIsiView extends GetView<RakitSoalIsiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RakitSoalIsiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RakitSoalIsiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
