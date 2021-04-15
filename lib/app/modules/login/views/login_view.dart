import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg-login-2.png"),
                    fit: BoxFit.cover)),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/logo-login.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: TextFormField(
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Email',
                        ),
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Password',
                        ),
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: new EdgeInsets.only(top: 20),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20)),
                            color: Colors.blue[300],
                            onPressed: () => true,
                            child: Text(
                              'Masuk',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
