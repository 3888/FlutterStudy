import 'package:flutter/material.dart';


class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
              // height: double.infinity, // match_parent
              // width: double.infinity,  // match_parent
              // height: 100,
              // width: 100,
              color: Colors.white,
              child: const Text('Text here'),
              padding: const EdgeInsets.all(10),
              // margin: const EdgeInsets.all(40),
              // margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              // margin: const EdgeInsets.fromLTRB(60, 30, 20, 50)),
              margin: const EdgeInsets.only(top: 100)),
        ),
      ),
    );
  }
}
