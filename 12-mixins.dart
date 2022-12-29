abstract class Animal { }

abstract class Mammal extends Animal { }

abstract class Bird extends Animal { }

abstract class Fish extends Animal { }

//The next 3 classes are the mixins
abstract class Fly {
  void fly() => print('I am flying!!');
}

abstract class Walk {
  void walk() => print('I am walking!!');
}

abstract class Swim {
  void swim() => print('I am swimming!!');
}

// ... with NameOfTheMixinClass1, NameOfTheMixinClass2
// with mixin, you can use any number of classes that you want
class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Walk, Fly {}

class Cat extends Mammal with Walk {}

class Dove extends Bird with Walk, Fly {}

class Duck extends Bird with Walk, Fly, Swim {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Swim, Fly { }

// Default entrance method executed by all .dart files
void main() {
  
  final duck = new Duck();
  duck.fly();
  duck.walk();
  duck.swim();
  
  final flyingFish = new FlyingFish();
  flyingFish.swim();

}
