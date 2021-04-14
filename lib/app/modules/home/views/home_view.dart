import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_application_1/app/modules/login/views/login_view.dart';
import 'package:flutter_application_1/app/modules/register/views/register_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () => Get.to(() => LoginView()),
            child: Text('Ke Halaman Login'),
          ),
          RaisedButton(
            onPressed: () => Get.to(() => RegisterView()),
            child: Text('Ke Halaman Register'),
          ),
          RaisedButton(
            onPressed: () => Get.to(() => DashboardView()),
            child: Text('Ke Halaman Dashboard'),
          )
        ],
      )),
    );
  }
}
