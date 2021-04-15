import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Anggota 1237462283'),
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
            icon: Icon(Icons.person), 
            title: Text('', 
              style: TextStyle(
                height: 0.0))
          ),
            
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Container(
          color: Colors.blue,
              alignment: Alignment.topCenter,
              height: 100,
              width: 700,
        ),
      ),
    );
  }
}
