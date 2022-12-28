// Default entrance method executed by all .dart files
void main() {
  
  final square = new Cuadrado();

  // Invoke the setter method -- 'InstanceOfTheClass.NameOfTheSetterMethod = ValueArgumentToPass'  --
  square.side = 10;
  print( "square after square.side $square" );

  // You can name the setterMethod as you wish
  square.randomSetter = 90;
  print( "square after square.randomSetter $square" );

  // If a private attribute hasn't got setter method --> You can't pass the value
  // square.attributeWithoutSetter

  // Execution is stopped if something throws an exception
  // square.lado = 0;

  // Invoke the getter method -- 'InstanceOfTheClass.NameOfTheGetterMethod --
  print( 'square.area: ${ square.area }' );
  
}

class Cuadrado {

  // _    Indicates that it's a private attribute
  // https://dart.dev/tools/diagnostic-messages?utm_source=dartdev&utm_medium=redir&utm_id=diagcode&utm_content=not_initialized_non_nullable_instance_field#not_initialized_non_nullable_instance_field
  late double _side;
  late double _random = 90.6;
  late String _attributeWithoutSetter = 'Alfredo is handsome';
  
  // Expose the attribute of public way
  set side( double valor ) {
    if ( valor <= 0 ) {
      throw("Side of a square can't be lower or equal than 0");
    }
    _side = valor;
  }

  // Any name can be given to setter and getter methods
  set randomSetter( double randomValue) {
    _random = randomValue;
  }

  // Getter method to get the area
  // 1. Classic
  // double get area {return _side * _side;}
  // 2. Arrow function
  double get area => _side * _side;
  //Although _ is to indicate that it's private, without it, the variable isn't found
  //double get area2 => lado * lado;

  // If we don't initialize all the attributes --> making the interpolation will throw an error
  // Method invoked by default when the interpolation for a class is made
  String toString() {
    final side = checkIfDoubleVariableExists(this._side);
    final random = checkIfDoubleVariableExists(this._random);
    final attributeWithoutSetter = checkIfVariableExists(this._attributeWithoutSetter);

    return 'Side: $side, Random $random and attributeWithoutSetter $attributeWithoutSetter ';
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
