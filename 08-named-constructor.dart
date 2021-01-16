    import 'dart:convert';

void main() {
  
//   final wolverine = new Heroe('Logan', 'Regeneración');
  final rawJson    = '{ "nombre": "Logan", "poder":"Regeneración" }';
  //Normally it returns a Map<dynamic, dynamic>
  Map parsedJson = json.decode( rawJson);
  
  //To print the string of the json decoded, which is a Map
//  print( parsedJson );
  
  //To use the name constructor
  final wolverine = new Heroe.fromJson( parsedJson );
  
  print(wolverine.nombre);
  print(wolverine.poder);
  
}





class Heroe {
  
  String nombre;
  String poder;
  
  Heroe( this.nombre, this.poder );
  
  //Name constructor without specifying the type of the argument
	// Heroe.fromJson( parsedJson ) {
  //   nombre = parsedJson['nombre'];
  //   poder  = parsedJson['poder'];
    
  // }
  
  Heroe.fromJson( Map parsedJson ) {
    //Since parsedJson is a Map, you use [] to get the values with the name of the key that you get from the json
    nombre = parsedJson['nombre'];
    poder  = parsedJson['poder'];
    
  }
  
  
}


