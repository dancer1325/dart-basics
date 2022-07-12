// Default entrance method executed by all .dart files
void main() {

  String messageWithoutSpecifyingArgumentType = saludarWithoutSpecifyingArgumentType('Fermamdo', 'Hola');
  String messageSpecifyingArgumentType = saludarSpecifyingArgumentType('Fermamdo', 'Hola');
  // Specifying by objects --> To invoke it, you need to specify the key and value, not by position
  // String messageWithTypesSpecifiedAsObjectRequired = saludarWithTypesSpecifiedAsObjectRequired('Fermamdo', 'Hola');
  // String messageWithTypesSpecifiedAsObjectRequired = saludarWithTypesSpecifiedAsObjectRequired({'Fermamdo', 'Hola'});
  // String messageWithTypesSpecifiedAsObjectRequired = saludarWithTypesSpecifiedAsObjectRequired(nombre:  'Fermando');     // All arguments are required
  String messageWithTypesSpecifiedAsObjectRequired = saludarWithTypesSpecifiedAsObjectRequired(nombre:  'Fermando',texto: 'Hola');
  // String messageWithTypesSpecifiedAsObjectOptional = saludarWithTypesSpecifiedAsObjectOptional('Fermamdo','Hola');
  String messageWithTypesSpecifiedAsObjectOptional = saludarWithTypesSpecifiedAsObjectOptional(nombre:  'Fermando',texto: 'Hola');
  // String messageWithTypesSpecifiedAsObjectOptional = saludarWithTypesSpecifiedAsObjectOptional(nombre:  'Fermando');        // Arguments are optionals
  String message = saludar2(nombre: 'Fernando', texto: 'Hola,');

  print("messageWithoutSpecifyinArgumentType $messageWithoutSpecifyingArgumentType");
  print("messageSpecifyingArgumentType $messageSpecifyingArgumentType");
  print("messageWithTypesSpecifiedAsObjectRequired $messageWithTypesSpecifiedAsObjectRequired");
  print("messageWithTypesSpecifiedAsObjectOptional $messageWithTypesSpecifiedAsObjectOptional");
  print("message $message");
}

// Functions can be created outside main()
// 1. If no return type is specified --> The default one is dynamic
defaultTypeToReturn() {
  print('Default type to return');
}

// The argument's type of the function
// 1. Without being specified
String saludarWithoutSpecifyingArgumentType(texto, nombre) {
  return 'saludarWithoutSpecifyingArgumentType $texto $nombre';
}
// 2. Specifying it
String saludarSpecifyingArgumentType(String texto, String nombre) {
  return 'saludarSpecifyingArgumentType $texto $nombre';
}

// 3. Specifying as an object --> Required to specify a non-null value
// 3.1 Mark as required
String saludarWithTypesSpecifiedAsObjectRequired({required String texto, required String nombre}) {
  return 'saludarWithTypesSpecifiedAsObjectRequired $texto $nombre';
}
// 3.2 Mark as optional
String saludarWithTypesSpecifiedAsObjectOptional({String? texto, String? nombre}) {
  return 'saludarWithTypesSpecifiedAsObjectOptional $texto $nombre';
}

//Arrow functions
// Also here it's necessary to mark as optional or required
String saludar2({String? texto, String? nombre}) => 'saludar2 $texto $nombre';
