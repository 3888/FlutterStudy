import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'StoryPage.dart';

class DestiniApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}
