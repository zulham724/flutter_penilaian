import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bagikan_2_controller.dart';

class Bagikan2View extends GetView<Bagikan2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bagikan2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Bagikan2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
