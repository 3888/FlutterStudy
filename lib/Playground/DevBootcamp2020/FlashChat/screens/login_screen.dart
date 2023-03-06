import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/components/ActionButton.dart';

import '../flash_chat_constatns.dart';

class LoginScreen extends StatefulWidget {
  static const id = "login_sreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration(
                  'Enter your email', Colors.lightBlueAccent),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration(
                    'Enter your password', Colors.lightBlueAccent)),
            SizedBox(
              height: 24.0,
            ),
            ActionButton(
                text: 'Log in', color: Colors.lightBlueAccent, onPress: () {}),
          ],
        ),
      ),
    );
  }
}
