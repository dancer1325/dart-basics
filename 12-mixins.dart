abstract class Animal { }

abstract class Mamifero extends Animal { }

abstract class Ave extends Animal { }

abstract class Pez extends Animal { }

//The next 3 classes are the mixins
//You can use both reserved words to define a mixin class
// abstract mixin Volador {
//   void volar() => print('Estoy volando!!');
// }
abstract class Volador {
  void volar() => print('Estoy volando!!');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando!!');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando!!');
}


class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador { }

// Default entrance method executed by all .dart files
void main() {
  
  final pato = new Pato();
  pato.volar();
  pato.caminar();
  pato.nadar();
  
  final pezVolador = new PezVolador();
  pezVolador.nadar();
  
  
}


