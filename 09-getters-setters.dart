// Default method executed by all .dart files
void main() {
  
  final cuadrado = new Cuadrado();
  
  cuadrado.lado = 10;
  
  print( cuadrado );

  //To test that it's stopped the execution if we throw an exception
  //cuadrado.lado = 0;
  
  

  print( 'área: ${ cuadrado.area }' );
  
}



class Cuadrado {
  
  double _lado;
//   double _area;
  
  
  set lado( double valor ) {
    
    if ( valor <= 0 ) {
      throw('El lado no puede ser menor o igual a 0');
    }
    
    _lado = valor;
    
  }
  
  //Method without ()
  //Classic function
  // double get area {return _lado * _lado;}
  //Arrow function
  double get area => _lado * _lado;
  //Although _ is to indicate that it's private, without it, the variable isn't found
  //double get area2 => lado * lado;
  
  
  toString() => 'Lado: $_lado';
  
}
