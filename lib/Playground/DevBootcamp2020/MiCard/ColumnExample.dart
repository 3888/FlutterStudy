import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // mainAxisSize
        // crossAxisAlignmentDefault
        // crossAxisAlignmentStretch
        crossAxisAlignmentEnd
        // mainAxisAlignment
        // sizedBox
        ;
  }
}

var crossAxisAlignmentDefault = MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: const Text('Text here 1'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 300,
            color: Colors.red,
            child: const Text('Text here 2'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: const Text('Text here 3'),
            padding: const EdgeInsets.all(10),
          )
        ],
      ),
    ),
  ),
);

var crossAxisAlignmentStretch = MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            // height: 100,
            width: 100,
            color: Colors.white,
            child: const Text('Text here 1'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            // height: 100,
            width: 100,
            color: Colors.red,
            child: const Text('Text here 2'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            // height: 100,
            width: 100,
            color: Colors.grey,
            child: const Text('Text here 3'),
            padding: const EdgeInsets.all(10),
          )
        ],
      ),
    ),
  ),
);

var crossAxisAlignmentEnd = MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: const Text('Text here 1'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 300,
            color: Colors.red,
            child: const Text('Text here 2'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: const Text('Text here 3'),
            padding: const EdgeInsets.all(10),
          )
        ],
      ),
    ),
  ),
);

var mainAxisSize = MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: const Text('Text here 1'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Text('Text here 2'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: const Text('Text here 3'),
            padding: const EdgeInsets.all(10),
          )
        ],
      ),
    ),
  ),
);

var mainAxisAlignment = MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        // mainAxisAlignment:MainAxisAlignment.center,
        // mainAxisAlignment:MainAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: const Text('Text here 1'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Text('Text here 2'),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: const Text('Text here 3'),
            padding: const EdgeInsets.all(10),
          )
        ],
      ),
    ),
  ),
);

var sizedBox = MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: const Text('Text here 1'),
            padding: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 20),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Text('Text here 2'),
            padding: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 20),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: const Text('Text here 3'),
            padding: const EdgeInsets.all(10),
          )
        ],
      ),
    ),
  ),
);

