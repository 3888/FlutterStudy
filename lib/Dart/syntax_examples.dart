import 'package:flutter/material.dart';

void main() {
  // curlyBracketsFunction;
  // curlyBracketsFunction();

  // hardcodedFunction;
  // hardcodedFunction();

  // print(funWithArguments(36, 'Tony'));
  // print(variableWithArgs(36, 'Tony'));

  // variable;
}

fatArrowFunSingleLineSyntax() => runApp(const MaterialApp(home: Text("Some text")));

funWithArguments(int age, String name) {
  return 'Age is $age name $name';
}

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

String variableWithArgs(int age, String name) {
  return 'Age is $age name $name';
}
