void main() {

  var myList = [10, 3, 4, 1];
  var newList = List.from(myList);
  var newList1 = [...myList];
  var newList2 = []..addAll(myList);
  print(myList.hashCode);
  print(newList.hashCode);
  print(newList1.hashCode);
  print(newList2.hashCode);




}
