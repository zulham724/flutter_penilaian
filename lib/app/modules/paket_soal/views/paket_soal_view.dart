import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/paket_soal_controller.dart';

class PaketSoalView extends GetView<PaketSoalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaketSoalView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PaketSoalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
