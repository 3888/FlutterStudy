import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/components/ActionButton.dart';

import '../flash_chat_constatns.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = "registration_screen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration('Enter your email', Colors.blueAccent),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration(
                  'Enter your password', Colors.blueAccent),
            ),
            SizedBox(
              height: 24.0,
            ),
            ActionButton(
                text: 'Register', color: Colors.blueAccent, onPress: () {})
          ],
        ),
      ),
    );
  }
}
