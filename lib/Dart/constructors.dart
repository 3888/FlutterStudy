void main() {
  var cat = SingleCat('Тимоха', 2);
  print(cat.name);
  var newCat = SingleCat('Барсик', 4);
  print(newCat.name);
}

class SingleCat {
  String _name;
  int age;
  static SingleCat _singleCat = SingleCat.fromName('', 0);

  SingleCat.fromName(this._name, this.age);

  factory SingleCat(String name, int age) {
    if (_singleCat._name == '') {
      _singleCat = SingleCat.fromName(name, age);
      print('Создаем экземпляр класса кота');
    } else {
      print('Экземпляр класса кота был создан ранее!');
    }
    return _singleCat;
  }

  String get name => _name;
}
