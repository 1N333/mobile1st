import 'package:flutter/material.dart';
import 'package:mobile1st/homepage.dart';

import 'index.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zhong Xina',
      theme: ThemeData.dark(),
      home: Index(),
    );
  }
}
