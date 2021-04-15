import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sunting_pengaturan_controller.dart';

class SuntingPengaturanView extends GetView<SuntingPengaturanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuntingPengaturanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SuntingPengaturanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
