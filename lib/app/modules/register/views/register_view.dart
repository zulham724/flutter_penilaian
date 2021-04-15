import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
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
              margin: new EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
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
                    children: [
                      Flexible(
                          child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Confirm Password',
                        ),
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: new EdgeInsets.only(top: 20),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20)),
                            color: Colors.blue[300],
                            onPressed: () => true,
                            child: Text(
                              'Buat Akun',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: new EdgeInsets.only(top: 50),
                      ),
                      Flexible(
                        child: Text(
                          'Sudah Punya Akun ?',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: new EdgeInsets.only(right: 5),
                      ),
                      Flexible(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20)),
                          color: Colors.blue[300],
                          onPressed: () => true,
                          child: Text(
                            'login',
                            style: TextStyle(color: Colors.white),
                          )
                        ),
                      ),
                    ],
                  )

                   
                ],
              ),
            )));
  }
}
