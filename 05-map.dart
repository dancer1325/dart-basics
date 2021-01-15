
void main() {
  
Map dynamicPerson = {
    'nombre' : 'Carlos',
    'edad' : 32,
    'soltero': true
  };

  //To get a value isn't as another languages using a . because it only shows the specific methods for the Map class
  //print(dynamicPerson.nombre);

  //To create a variable with value the key to extract
  String propiedad = 'soltero';
  
  Map<String, dynamic> persona = {
    'nombre' : 'Carlos',
    'edad'   : 32,
    'soltero': true
  };
  
  print( persona['nombre'] );
  print( persona['edad'] );
  print( persona[ propiedad ] );
  
  
  Map<int, String> personas = {
    1: 'Tony',
    2: 'Peter',
    9: 'Strange'
  };

  //Once you have specified an specific type for the key or the value, you can't introduce any type of variable
  // Map<int, String> wrongMap = {
  //   1: 'Tony',
  //   2: 'Peter',
  //   9: 'Strange',
  //   "Alfredo": 4
  // };


  //To add new element to the map
  personas.addAll( { 4: 'Banner'  } );
  
  print( personas );

  //To get the value of one entrance, you need to specify the key
  print( personas[2] );
  
  
}

