import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_paket_soal_3_controller.dart';

class PreviewPaketSoal3View extends GetView<PreviewPaketSoal3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PreviewPaketSoal3View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PreviewPaketSoal3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
