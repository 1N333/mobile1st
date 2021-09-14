import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile1st/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtLname(),
                txtEmail(),
                txtPassword(),
                btnSubmit()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
            labelText: "Name : ",
            icon: Icon(Icons.person_search),
            hintText: "Enter your name"),
        validator: (value) {
          if (value!.isEmpty) {
            return "โปรดกรอกข้อมูล";
          } else if (value.length < 3) {
            return "กรอกข้อมูลมากกว่า 3 ตัวอักษร";
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtLname() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
            labelText: "Lastname : ",
            icon: Icon(Icons.person),
            hintText: "Enter your lastname"),
        validator: (value) {
          if (value!.isEmpty) {
            return "โปรดกรอกข้อมูล";
          } else if (value.length < 3) {
            return "กรอกข้อมูลมากกว่า 3 ตัวอักษร";
          }
        },
        onSaved: (value2) {
          surname = value2;
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Email : ",
          icon: Icon(Icons.mail),
          hintText: "Enter your email",
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (!(value!.contains("@"))) {
            return "กรอกข้อมูลในรูปแบบอีเมล";
          } else if (!(value.contains("."))) {
            return "กรอกข้อมูลในรูปแบบอีเมล";
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: pColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Password : ",
          icon: Icon(Icons.password),
          hintText: "Enter your password",
        ),
        obscureText: true,
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () {
        print("Submited");
        if (formkey.currentState!.validate()) {
          formkey.currentState!.save();
          print("ชื่อ : $name");
          print("นามสกุล : $surname");
          print("email : $email");
          print("รหัส : $password");
        }
      },
    );
  }
}
