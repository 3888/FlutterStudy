import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/chat_screen.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/login_screen.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/registration_screen.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/welcome_screen.dart';
import 'package:oktoast/oktoast.dart';

import '../BitcoinTicker/miui10_anim.dart';

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return OKToast(
        textStyle: const TextStyle(fontSize: 19.0, color: Colors.white),
        backgroundColor: Colors.grey,
        animationCurve: Curves.easeIn,
        animationBuilder: const Miui10AnimBuilder(),
        animationDuration: const Duration(milliseconds: 200),
        duration: const Duration(seconds: 3),
        child: MaterialApp(
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context) => WelcomeScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            RegistrationScreen.id: (context) => RegistrationScreen(),
            ChatScreen.id: (context) => ChatScreen(),
          },
        ));
  }
}
