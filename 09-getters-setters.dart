// Default entrance method executed by all .dart files
void main() {
  
  final cuadrado = new Cuadrado();

  // Invoke the setter method, just via '.NameOfTheSetterMethod'
  cuadrado.lado = 10;
  print( "cuadrado after cuadrado.lado $cuadrado" );

  // You can name the setterMethod as you wish
  cuadrado.randomSetter = 90;
  print( "cuadrado after cuadrado.randomSetter $cuadrado" );

  // If a private attribute hasn't got setter method --> You can't pass the value
  // cuadrado.attributeWithoutSetter

  //Execution is stopped if we throw an exception
  // cuadrado.lado = 0;

  print( 'cuadrado.area: ${ cuadrado.area }' );
  
}

class Cuadrado {

  // _    Indicates that it's a private attribute
  // https://dart.dev/tools/diagnostic-messages?utm_source=dartdev&utm_medium=redir&utm_id=diagcode&utm_content=not_initialized_non_nullable_instance_field#not_initialized_non_nullable_instance_field
  late double _lado;
  late double _random = 90.6;
  late String _attributeWithoutSetter = 'Alfredo is handsome';
  
  // Expose the attribute of public way
  set lado( double valor ) {
    if ( valor <= 0 ) {
      throw('El lado no puede ser menor o igual a 0');
    }
    _lado = valor;
  }

  // Any name can be given to setter and getter methods
  set randomSetter( double randomValue) {
    _random = randomValue;
  }

  // Getter method to get the are
  // 1. Classic
  // double get area {return _lado * _lado;}
  // 2. Arrow function
  double get area => _lado * _lado;
  //Although _ is to indicate that it's private, without it, the variable isn't found
  //double get area2 => lado * lado;

  // If we don't initialize all the attributes --> making the interpolation will throw an error
  String toString() {
    final lado = checkIfDoubleVariableExists(this._lado);
    final random = checkIfDoubleVariableExists(this._random);
    final attributeWithoutSetter = checkIfVariableExists(this._attributeWithoutSetter);

    return 'Lado: $lado, Random $random and attributeWithoutSetter $attributeWithoutSetter ';
  }

  //TODO: Create a method checking by generics
  String checkIfVariableExists(String? variableToCheck) {
    if(variableToCheck != null) {
      return variableToCheck;
    }
    return "";
  }

  double checkIfDoubleVariableExists(double? variableToCheck) {
    if(variableToCheck != null) {
      return variableToCheck;
    }
    return 5.0;
  }
  
}
