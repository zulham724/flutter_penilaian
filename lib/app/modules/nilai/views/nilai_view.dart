import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nilai_controller.dart';

class NilaiView extends GetView<NilaiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NilaiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NilaiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
