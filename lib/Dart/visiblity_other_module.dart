import 'package:learn_flutter/Dart/visiblity.dart';

void main() {
  var item = VisibilityExample();

  // item._hiddenItem(); // error
  item.openFun();
  item.openVar;
  // print(item._privateVar); // error

  var catConst = const ImmutableCat('Тимоха', 3);
  var newcatConst = const ImmutableCat('Тимоха', 3);
  var newcat =  ImmutableCat('Тимоха', 3);

  print(identical(catConst, newcatConst)); // cat == newcat
  print(identical(catConst, newcat)); // cat != newcat
  print({catConst.hashCode});
  print({newcatConst.hashCode});
  print({newcat.hashCode});
}

class ImmutableCat {
  final String name;
  final int age;

  const ImmutableCat(this.name, this.age);

  void helloMaster() {
    print('Мя-я-я-я-у!!!');
  }
}


class SingleCat{
  String _name;
  int age;
  static SingleCat _singleCat = SingleCat.fromName('',0);
  SingleCat.fromName(this._name, this.age);
  factory SingleCat(String name, int age){
    if(_singleCat._name == ''){
      _singleCat = SingleCat.fromName(name, age);
      print('Создаем экземпляр класса кота');
    }
    else{
      print('Экземпляр класса кота был создан ранее!');
    }
    return _singleCat;
  }
  String get name => _name;
}
