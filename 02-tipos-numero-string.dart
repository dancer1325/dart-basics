// Default entrance method executed by all .dart files
void main() {
  
//   	Números
  int empleados = 10;
  
  //Error defining variables uncorrectly 
  //int empleados = 10.0;

  double pi = 3.141592;

  //If we don't specify the type of variable
  var numero = 1.0;
  
  print( '$empleados - $pi - $numero' );
  
//   String - Cadenas de caracteres
  String nombre = 'Tony';
  String nombreWithDouble = "Tony";
  String nombreWithDoubleAndSimpleInTheMiddle1Try = "To'ny";
  String nombreWithDoubleAndSimpleInTheMiddle2Try = "To\'ny";
  String nombreWithSimpleAndDoubleInTheMiddle1Try = 'To"ny';
  String nombreWithSimpleAndDoubleInTheMiddle2Try = 'To\"ny';

  print(nombreWithDoubleAndSimpleInTheMiddle1Try + " or " + nombreWithDoubleAndSimpleInTheMiddle2Try);
  print(nombreWithSimpleAndDoubleInTheMiddle1Try + " or " + nombreWithSimpleAndDoubleInTheMiddle2Try);

  print(nombre + ' or ' + nombreWithDouble);
  print(nombre[0]);
  print(nombre[ nombre.length - 1 ]);
  
}