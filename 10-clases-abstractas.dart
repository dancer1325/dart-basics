// Default entrance method executed by all .dart files
void main() {
 //Abstract classes don’t allow creating instances of that class. Neither new nor default constructor
 //Animal animal = new Animal();
 //Animal animal = Animal();

  //A non-abstract class allow creating instances of classes
  // 1. With new
  final perro = new Perro();
  perro.emitirSonido();
  // 2. Without new
  final perroWithoutNew = Perro();
  perroWithoutNew.emitirSonido();
  
  final gato = new Gato();
  gato.emitirSonido();
}

abstract class Animal {
  
  late int patas;
  
  void emitirSonido();
  
}

class Perro implements Animal{
  // It's required to implement the parent's attributes and methods, such as 'int patas' in this case
  late int patas;
  late int colas;
  
  void emitirSonido() => print('GUAUUUUU!!');
  
}

class Gato implements Animal {
  // It's required to implement the parent's attributes and methods, such as 'int patas' in this case
  late int patas;
  
  void emitirSonido() => print('MIAUUUU!!');
  
}



