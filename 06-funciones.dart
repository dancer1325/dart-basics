// Default entrance method executed by all .dart files
void main() {

  String messageWithoutSpecifyingArgumentType = greetWithoutSpecifyingArgumentType('Fernando', 'Hi');
  String messageSpecifyingArgumentType = greetSpecifyingArgumentType('Fernando', 'Hi');

  // Specifying by objects --> To invoke it, you need to specify the key and value, not by position
  // String messageWithTypesSpecifiedAsObjectRequired = greetWithTypesSpecifiedAsObjectRequired('Fernando', 'Hi');
  // String messageWithTypesSpecifiedAsObjectRequired = greetWithTypesSpecifiedAsObjectRequired({'Fernando', 'Hi'});
  // String messageWithTypesSpecifiedAsObjectRequired = greetWithTypesSpecifiedAsObjectRequired(name:  'Fernando');     // All arguments are required
  String messageWithTypesSpecifiedAsObjectRequired = greetWithTypesSpecifiedAsObjectRequired(name:  'Fernando',text: 'Hi');

  // String messageWithTypesSpecifiedAsObjectOptional = greetWithTypesSpecifiedAsObjectOptional('Fernando','Hi');
  String messageWithTypesSpecifiedAsObjectOptional = greetWithTypesSpecifiedAsObjectOptional(name:  'Fernando',text: 'Hi');
  String messageWithTypesSpecifiedAsObjectOptionalWithoutAll = greetWithTypesSpecifiedAsObjectOptional(name:  'Fernando');        // Arguments are optionals
  String message = greet2(name: 'Fernando', text: 'Hi,');
  String message3 = greet3(name: 'Fernando', text: 'Hi,');

  print("messageWithoutSpecifyingArgumentType $messageWithoutSpecifyingArgumentType");
  print("messageSpecifyingArgumentType $messageSpecifyingArgumentType");
  print("messageWithTypesSpecifiedAsObjectRequired $messageWithTypesSpecifiedAsObjectRequired");
  print("messageWithTypesSpecifiedAsObjectOptional $messageWithTypesSpecifiedAsObjectOptional");
  print("messageWithTypesSpecifiedAsObjectOptionalWithoutAll $messageWithTypesSpecifiedAsObjectOptionalWithoutAll");
  print("message $message");
  print("message3 $message3");
}

// Functions can be created outside main()
// 1. If no return type is specified --> The default one is dynamic
defaultTypeToReturn() {
  print('Default type to return');
}

// The argument's type of the function
// 1. Without being specified
String greetWithoutSpecifyingArgumentType(text, name) {
  return 'greetWithoutSpecifyingArgumentType $text $name';
}
// 2. Specifying it
String greetSpecifyingArgumentType(String text, String name) {
  return 'greetSpecifyingArgumentType $text $name';
}

// 3. Specifying as an object --> Required to specify a non-null value
// 3.1 Mark as required
String greetWithTypesSpecifiedAsObjectRequired({required String text, required String name}) {
  return 'greetWithTypesSpecifiedAsObjectRequired $text $name';
}
// 3.2 Mark as optional
String greetWithTypesSpecifiedAsObjectOptional({String? text, String? name}) {
  return 'greetWithTypesSpecifiedAsObjectOptional $text $name';
}

//Arrow functions
// Also here it's necessary to mark as optional or required
String greet2({String? text, String? name}) => 'greet2 $text $name';

// Unnecessary to indicate the return type, it can be inferred
greet3({String? text, String? name}) => 'greet3 $text $name';
