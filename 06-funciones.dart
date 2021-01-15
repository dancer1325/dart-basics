void main() {
  
  String mensaje = saludar2( nombre: 'Fernando', texto: 'Hola,'  );
  
  print(mensaje);
  
}

//Function returning the default type (dynamic)
defaultTypeToReturn() {
  print('Default type to return');
}

//The argument's type of the function can be not specified
String saludar( texto,  nombre ) {
  return '$texto $nombre';
}

//To specify the type of the arguments and their name
String saludar({ String texto, String nombre }) {
//   print('Hola');
  return '$texto $nombre';
}

//Arrow functions
String saludar2({ String texto, String nombre }) => '$texto $nombre';