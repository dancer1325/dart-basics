// 1. Default entrance method executed by all .dart files
// 2. VariableToReturn main() {}
// 3. Required by all dart programs
void main() {
  
  /* Commentary
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

  // String is a class in dart -->
  // 1. S in capital letter

  // Ways to concatenate Strings:
  // 1.Classic one
  print('Hola ' + name);

  // 2.Interpolation
  print('Hola $name2');

  // Once you initialize the variable --> Types are inferred
  var name3 = 'Alfredo3';
  print(name3.runtimeType);

  // print(AString) --> Using any way to declare a String
  // 1. print('SomethingWithSimpleQuote');
  print('SomethingWithSimpleQuote');

  // 2. print("SomethingWithDoubleQuotes");
  print("SomethingWithDoubleQuotes");

  // Sentences ends with ;   , else an error
  // String name = "Alfredo"
}