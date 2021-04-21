import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_paket_soal_controller.dart';

class PreviewPaketSoalView extends GetView<PreviewPaketSoalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preview Paket Soal'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children:[
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined, size: 15),
                    color: Colors.white,
                    onPressed: (){},
                  ),
                ),

                Text(
                  '1',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ]
            )
          ]
        )
      ),
    );
  }
}
