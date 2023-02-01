import 'package:flutter/material.dart';

import 'Ball.dart';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Ball(),
      ),  
    );
  }
}
