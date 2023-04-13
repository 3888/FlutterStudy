mixin Eating{
  void eat(){
    print('Кушать');
  }
}

mixin Running{
  void run(){
    print('Бежать');
  }
}

abstract class Purring{
  void purr(){
    print('Му-р-р-р-р');
  }
}

abstract class Whining{
  void whine(){
    print('У-у-у-у-у-у');
  }
}

class Cat extends Purring with Eating, Running {
  void goToEat(){
    run();
    eat();
    purr();
    print('От послеобеденного мурчания кота можно оглохнуть!');
  }
}

class Dog extends Whining with Eating, Running {
  void runToEat(){
    run();
    eat();
    print('Пес полакомился обедом');
  }
}

abstract class flying {
  void fly() {
    print('Полет');
  }
}

class Bird extends flying with Eating, Running {
  void flyToEat(){
    fly();
    run();
    eat();
    print('После обеда птица нежится на солнце');
  }
}

mixin Chiping on Bird{
  void chip(){
    flyToEat();
    print('Чик-чирик!');
  }
}
class Sparrow extends Bird with Chiping{}

void main(List<String> arguments) {
  var bird = Sparrow().chip();
}