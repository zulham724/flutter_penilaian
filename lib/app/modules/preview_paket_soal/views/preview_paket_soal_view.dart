import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_paket_soal_controller.dart';

class PreviewPaketSoalView extends GetView<PreviewPaketSoalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PreviewPaketSoalView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PreviewPaketSoalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
