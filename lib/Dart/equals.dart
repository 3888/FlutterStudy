import 'package:learn_flutter/Dart/visiblity.dart';

void main() {
  var catConst = const ImmutableCat('Тимоха', 3);
  var newcatConst = const ImmutableCat('Тимоха', 3);
  var newcat =  ImmutableCat('Тимоха', 3);

  print(identical(catConst, newcatConst)); // cat == newcat
  print(identical(catConst, newcat)); // cat != newcat
}

class ImmutableCat {
  final String name;
  final int age;

  const ImmutableCat(this.name, this.age);

  void helloMaster() {
    print('Мя-я-я-я-у!!!');
  }
}
