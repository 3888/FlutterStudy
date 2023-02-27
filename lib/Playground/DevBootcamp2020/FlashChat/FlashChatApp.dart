import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/chat_screen.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/login_screen.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/registration_screen.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/welcome_screen.dart';

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
