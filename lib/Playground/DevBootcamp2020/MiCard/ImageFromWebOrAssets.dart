import 'package:flutter/material.dart';


class ImageFromWebOrAssets extends StatelessWidget {
  const ImageFromWebOrAssets({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF5A937B)), // overlapping by backgroundColor
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
            title: const Text('AppBar Title Text'),
            backgroundColor: Colors.blueGrey[900]),
        body: const Center(
          child: Image(
              image:
                  // NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
                  AssetImage('images/meditate.jpeg')),
        ),
      ),
    );
  }
}
