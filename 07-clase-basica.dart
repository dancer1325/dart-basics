 void main() {
  
  //The type of the variable, coming from an instance of one class is intuited. Printing is just an instance of the class
  //var wolverineWithoutSpecifyingType = new Heroe();
  //print(wolverineWithoutSpecifyingType);

  //Specifying the type of the variable. Printing is just an instance of the class
  //Heroe wolverineIndicatingType = new Heroe();
  //print(wolverineIndicatingType);
  
  //To invoke the constructor without name arguments
  var wolveringConstructorIndicatingTypeOfArguments = new Heroe('Logan', 'Regeneracion');
   
   //To invoke the constructor with name arguments, missing some of them 
   //var wolveringConstructorIndicatingTypeAndNameOfArguments = new Heroe(poder: 'Regeneracion');
  
  //To get the properties to the instance of the class
  print(wolveringConstructorIndicatingTypeOfArguments.nombre);

//  final wolverine = new Heroe( 
//    poder: 'Regeneración',
//    nombre: 'Logan'
  //);
    
  print( wolveringConstructorIndicatingTypeOfArguments );
  
}

class Heroe {
  
  String nombre;
  String poder;

  //Heroe() {
  //
  //}
  
  //Constructor indicating the type of arguments but without specifying the name of each argument
  Heroe( String nombre , String poder ) {
    this.nombre = nombre;
    this.poder  = poder; 
  }

  //Constructor with name arguments
  //   Heroe({ String nombre , String poder }) {
//     this.nombre = nombre;
//     this.poder  = poder; 
//   }
  
  //Constructor with name arguments, specifying a default value for one of the properties
//   Heroe({ String nombre = 'Sin Nombre', String poder }) {
//     this.nombre = nombre;
//     this.poder  = poder; 
//   }
  
  //Short way to assign the properties by position. It's not possible to indicate a default value
  // Heroe({ this.nombre, this.poder });
  
   String toString() {
     //Take care getting the value with $, because they are like the order of the operations
     //return '$this.nombre $this.poder';
     return '${ this.nombre } ${this.poder}';
   }
  
  //It's not mandatory to use this
  // String toString() => 'nombre: $nombre - poder: $poder';
  
}


