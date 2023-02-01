import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return challenge;
  }
}

var challenge = MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(width: 30),
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.lightGreen,
                  ),
                ]),
          ),
          const SizedBox(width: 30),
          Container(
            width: 100,
            color: Colors.blue,
          ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.grey,
          //   child: const Text('Text here 3'),
          //   padding: const EdgeInsets.all(10),
          // )
        ],
      ),
    ),
  ),
);
