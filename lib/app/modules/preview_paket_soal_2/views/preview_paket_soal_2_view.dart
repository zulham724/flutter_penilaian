import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_paket_soal_2_controller.dart';

class PreviewPaketSoal2View extends GetView<PreviewPaketSoal2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PreviewPaketSoal2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PreviewPaketSoal2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
