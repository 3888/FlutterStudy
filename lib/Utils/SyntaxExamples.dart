import 'package:flutter/material.dart';

void main() {
  fatArrow();

  curlyBracketsFunction;
  curlyBracketsFunction();

  hardcodedFunction;
  hardcodedFunction();

  variable;
}

fatArrow() => runApp(const MaterialApp(home: Text("Some text")));

curlyBracketsFunction() {
  var data = 'Hello World';

  var text = Text(data);
  var center = Center(child: text);

  runApp(MaterialApp(home: center));
}

hardcodedFunction() => runApp(
  const MaterialApp(
    home: Center(
      child: Text("Test"),
    ),
  ),
);

var variable = runApp(
  const MaterialApp(
    home: Center(
      child: Text("Test"),
    ),
  ),
);
