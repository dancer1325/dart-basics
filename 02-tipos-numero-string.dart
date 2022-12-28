// Default entrance method executed by all .dart files
void main() {
  
//   	Numbers
  int employees = 10;
  
  //Error defining variables incorrectly 
  //int employees = 10.0;

  double pi = 3.141592;

  //If we don't specify the type of variable --> it's inferred
  var number = 1.0;

  // Interpolation to get the variable's value -- no math operation is executed --
  print( '$employees - $pi - $number' );
  
  //   String - Chain of characters
  // No required \ , to display special characters
  String name = 'Tony';
  String nameWithDoubleQuotes = "Tony";

  print(name + ' or ' + nameWithDoubleQuotes);

  String nameWithDoubleAndSimpleInTheMiddle1Try = "To'ny";
  String nameWithDoubleAndSimpleInTheMiddle2Try = "To\'ny";
  String nameWithSimpleAndDoubleInTheMiddle1Try = 'To"ny';
  String nameWithSimpleAndDoubleInTheMiddle2Try = 'To\"ny';

  print("nameWithDoubleAndSimpleInTheMiddle1Try: " + nameWithDoubleAndSimpleInTheMiddle1Try + " or " + "nameWithDoubleAndSimpleInTheMiddle2Try: " + nameWithDoubleAndSimpleInTheMiddle2Try);
  print("nameWithSimpleAndDoubleInTheMiddle1Try: " + nameWithSimpleAndDoubleInTheMiddle1Try + " or " + "nameWithSimpleAndDoubleInTheMiddle2Try: " + nameWithSimpleAndDoubleInTheMiddle2Try);

  // String as chain of characters, allow getting each character
  print(name[0]);
  print(name[ name.length - 1 ]);
  
}