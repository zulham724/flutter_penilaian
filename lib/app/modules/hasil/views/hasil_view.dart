import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:get/get_connect/http/src/utils/utils.dart';

import '../controllers/hasil_controller.dart';

class HasilView extends GetView<HasilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil'),
        centerTitle: false,
      ),
      bottomNavigationBar: BottomNavigationBar( 
        
        backgroundColor: Colors.blue,
        selectedIconTheme: IconThemeData(
          color: Colors.white
        ),
        //selectedIconTheme: Colors.white,
        items: <BottomNavigationBarItem> [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('', 
              style: TextStyle(height: 0.0))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add), 
            title: Text('', 
              style: TextStyle(
                height: 0.0))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            title: Text('', 
              style: TextStyle(
                height: 0.0))
          ),
            
        ],
      ),

      body: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bg-card-hasil.png',
                  alignment: Alignment.topCenter,
                  ),
              ],
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bg-card-hasil.png',
                  alignment: Alignment.topCenter,
                  ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bg-card-hasil.png',
                  alignment: Alignment.topCenter,
                  ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bg-card-hasil.png',
                  alignment: Alignment.topCenter,
                  ),
              ],
            ),
          ],
        
        ),
        
      ),
     
    );
  }
}
