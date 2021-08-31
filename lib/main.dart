import 'package:flutter/material.dart';
import 'package:mobile1st/screen/homepage.dart';
import 'package:mobile1st/screen/login.dart';
import 'package:mobile1st/screen/register.dart';
import 'config/constant.dart';
import 'index.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zhong Xina',
      theme: ThemeData(primaryColor: pColor, secondaryHeaderColor: sColor),
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
      },
      home: Index(),
    );
  }
}
