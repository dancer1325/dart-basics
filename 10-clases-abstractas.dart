// Default entrance method executed by all .dart files
void main() {
 //Abstract classes don’t allow creating instances of that class. Neither new nor default constructor
 //Animal animal = new Animal();
 //Animal animal = Animal();

  //A non-abstract class allow creating instances of classes (as any normal class)
  // 1. With new
  final dog = new Dog();
  dog.emitSound();
  // 2. Without new
  final dogWithoutNew = Dog();
  dogWithoutNew.emitSound();
  
  final cat = new Cat();
  cat.emitSound();
}

abstract class Animal {
  late int legs;
  
  void emitSound();
}

class Dog implements Animal{
  // It's required to implement the parent's attributes and methods, such as 'int legs' in this case
  late int legs;

  // Additional attributes can be added
  late int tails;
  
  void emitSound() => print('GUAUUUUU!!');
}

class Cat implements Animal {
  // It's required to implement the parent's attributes and methods, such as 'int patas' in this case
  late int legs;
  
  void emitSound() => print('MIAUUUU!!');
}
