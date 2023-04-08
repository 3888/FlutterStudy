import 'package:fimber/fimber.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/components/action_button.dart';
import 'package:oktoast/oktoast.dart';

import '../flash_chat_constatns.dart';
import 'chat_screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = "login_sreen";

  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var logger = FimberLog("TAG_LOGIN");
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
                  password = value;
                },
                decoration: kTextFieldDecoration(
                    'Enter your password', Colors.lightBlueAccent)),
            SizedBox(
              height: 24.0,
            ),
            ActionButton(
                text: 'Log in',
                color: Colors.lightBlueAccent,
                onPress: () async {
                  try {
                    final UserCredential? signIn  = await _auth.signInWithEmailAndPassword(
                        email: "qwerty@qq.qq", password: "qwerty");

                    if (signIn != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } on FirebaseAuthException catch (e) {
                    logger.e(e.toString());
                    var message = e.toString();
                    if (e.code == 'user-not-found') {
                      message = 'No user found for that email.';
                    } else if (e.code == 'wrong-password') {
                      message = 'Wrong password provided for that user.';
                    }
                    showToast(message);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
