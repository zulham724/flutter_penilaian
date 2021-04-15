import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_2_controller.dart';

class Profil2View extends GetView<Profil2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Profil2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
