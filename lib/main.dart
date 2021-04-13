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
            height: 1000,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-login-2.png'),
                fit: BoxFit.cover
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/logo-login.png',height: 70,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: 'Email',
                  ),
                ),
                
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: 'Password',
                  ),
                ),

                MaterialButton(
                  color: Colors.lightBlue ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('Masuk'),
                  textColor: Colors.white,
                  onPressed: (){},
                ),
              ]
            ),
    
          )
        ),
      );
    }
  }
  
  