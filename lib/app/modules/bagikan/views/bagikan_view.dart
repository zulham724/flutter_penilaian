import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bagikan_controller.dart';

class BagikanView extends GetView<BagikanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bagikan'),
        centerTitle: false,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          
        ),
      ),
    );
  }
}
