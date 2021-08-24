import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("John China"),
        ),
        body: Container(
          color: Colors.indigo,
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          // width: 200,
          // height: 1000,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                right: 20,
                child: Text(
                  "Data1",
                  style: TextStyle(fontSize: 33, color: Colors.amber),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  "Data2",
                  style: TextStyle(fontSize: 33, color: Colors.amber),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Text(
                  "Data3",
                  style: TextStyle(fontSize: 33, color: Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
