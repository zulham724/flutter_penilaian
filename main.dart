import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

  class MyApp extends StatefulWidget {
    MyApp({Key key}) : super(key: key);
  
    @override
    _MyAppState createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Percobaan Pertama',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-login-2.png'),
                fit: BoxFit.cover
              ),
            ),
            child: Center(child: Image.asset('assets/logo-login.png',height: 70,),
            
            ),
    
          )
        ),
      );
    }
  }
  
  