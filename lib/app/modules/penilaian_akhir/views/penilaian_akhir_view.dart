import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/penilaian_akhir_controller.dart';

class PenilaianAkhirView extends GetView<PenilaianAkhirController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PenilaianAkhirView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PenilaianAkhirView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
