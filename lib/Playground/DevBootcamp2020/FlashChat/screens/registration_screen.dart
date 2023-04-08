import 'package:fimber/fimber.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/chat_screen.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/components/action_button.dart';
import 'package:oktoast/oktoast.dart';

import '../flash_chat_constatns.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = "registration_screen";

  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  var logger = FimberLog("TAG_REGISTRATION");
  final _auth = FirebaseAuth.instance;
  var email = "";
  var password = "";

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
            Flexible(
              child: Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kTextFieldDecoration('Enter your email', Colors.blueAccent),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration(
                  'Enter your password', Colors.blueAccent),
            ),
            SizedBox(
              height: 24.0,
            ),
            ActionButton(
                text: 'Register',
                color: Colors.blueAccent,
                onPress: () async {
                  setState(() {
                  });
                  try {
                    final UserCredential? newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);

                    if (newUser != null) {
                      setState(() {
                      });
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } on FirebaseAuthException catch (e) {
                    setState(() {
                    });
                    logger.e(e.toString());
                    var message = e.toString();

                    if (e.code == 'weak-password') {
                      message = 'The password provided is too weak.';
                    } else if (e.code == 'email-already-in-use') {
                      message = 'The account already exists for that email.';
                    }
                    showToast(message);
                  }
                })
          ],
        ),
      ),
    );
  }
}
