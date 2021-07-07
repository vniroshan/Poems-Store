import 'package:flutter/material.dart';
import 'package:frontend/constant.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: txtEmail,
              validator: (val) => val!.isEmpty ? 'Invalid email address' : null,
              decoration: kInputDecoration('Email'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: txtPassword,
              obscureText: true,
              validator: (val) =>
                  val!.isEmpty ? 'Required at least 6 chars' : null,
              decoration: kInputDecoration('Password'),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                  padding: MaterialStateProperty.resolveWith(
                      (states) => EdgeInsets.symmetric(vertical: 10))),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
