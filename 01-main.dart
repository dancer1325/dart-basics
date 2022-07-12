// Default entrance method executed by all .dart files
void main() {
  
  /*
  print('Hola Mundo');
  asdasd
  asd
  a
  sdasd
  */

  // Ways to declare String
  // 1. "
  String name = "Alfredo";
  // 2. '
  String name2 = 'Alfredo2';

  // Ways to concatenate Strings:
  // 1.Classic one
  print('Hola ' + name);

  // 2.Interpolation
  print('Hola $name2');

  // Once you initialize the variable --> Types are inferred
  var name3 = 'Alfredo3';
  print(name3.runtimeType);
  
}