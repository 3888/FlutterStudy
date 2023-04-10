void main() {
  var item = VisibilityExample();

  item._privateFun();
  item.openFun();
  print(item.openVar);
  print(item._privateVar);
}

class VisibilityExample {
  void _privateFun() {}
  void openFun() {}

  var _privateVar = -1;
  var openVar = 0;
}
