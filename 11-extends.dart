void main() {
  
  final superman = new Heroe();
  //As Heroe extends to Personaje, it contains also those properties
  superman.nombre = 'Clark Kent';
  
  final luthor = new Villano();
  luthor.nombre  = 'Lex Luthor';
  
  
}

//It's not necessary that the class is abstract to have the posibility to extend or to implement
// class Personaje {
//   String poder;
//   String nombre;
// }

//It's done abstract in order to avoid creating instance of Personaje
abstract class Personaje {
  String poder;
  String nombre;
}


class Heroe extends Personaje { 
	
  int valentia;

}

class Villano extends Personaje {

  int maldad;
}