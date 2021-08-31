import 'package:flutter/material.dart';
import 'package:mobile1st/config/constant.dart';
import 'package:mobile1st/screen/login.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: pColor,
        child: ListView(
          children: [
            Image.asset(
              "assets/image/logo.png",
              width: size.width * 0.3,
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Welcome to Kmutnb",
              style: TextStyle(
                fontSize: 33,
                color: Colors.deepOrangeAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Image(
                image: NetworkImage(
                    'https://www.scified.com/articles/new-godzilla-singular-point-image-released-24.jpg')),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: pFont,
                  ),
                  primary: Colors.amber[900],
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('LOGIN'),
              onPressed: () {
                print("Welcome");
                Navigator.pushNamed(context, 'login');
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: pFont,
                  ),
                  primary: Colors.amber[900],
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('SIGH UP'),
              onPressed: () {
                print("สมัครสมาชิก");
                Navigator.pushNamed(context, 'register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
