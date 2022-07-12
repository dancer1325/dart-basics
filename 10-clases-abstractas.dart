// Default entrance method executed by all .dart files
void main() {
  
 //Abstract classes doesn’t allow creating instances of that class. Neither new nor default constructor
 //Animal animal = new Animal();
 //Animal animal = Animal();

  //A non-abstract class allow creating instances of classes with new
  final perro = new Perro();
  perro.emitirSonido();
  
  final gato = new Gato();
  gato.emitirSonido();
  
}


abstract class Animal {
  
  int patas;
  
  void emitirSonido();
  
}

class Perro implements Animal{
  
  int patas;
  int colas;
  
  void emitirSonido() => print('GUAUUUUU!!');
  
}

class Gato implements Animal {
  
  int patas;
  
  void emitirSonido() => print('MIAUUUU!!');
  
}



