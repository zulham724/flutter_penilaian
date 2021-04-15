import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bagikan_controller.dart';

class BagikanView extends GetView<BagikanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BagikanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BagikanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
