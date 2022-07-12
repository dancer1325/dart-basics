// Default entrance method executed by all .dart files
void main() {
  // Dynamic key and value types
  Map dynamicPerson = {'nombre': 'Carlos', 'edad': 32, 'soltero': true};

  //To get a value isn't as another languages using a . because it only shows the specific methods for the Map class
  //print(dynamicPerson.nombre);

  // Inferring the type without specifying the key / value 's types, are dynamic
  print('dynamicPerson.runtimeType $dynamicPerson.runtimeType');

  //Variable with the value of the map's key
  String propiedad = 'soltero';

  Map<String, dynamic> persona = {
    'nombre': 'Carlos',
    'edad': 32,
    'soltero': true
  };
  var name = persona['nombre'];
  var age = persona['edad'];
  var isSingle = persona['soltero'];
  print('name $name');
  print('age $age');
  print('isSingle $isSingle');
  // Without declaring a variable, an making the interpolation of an expression, using {}
  print('persona[\'nombre\'\] ${persona['nombre']}');

  Map<int, String> personas = {1: 'Tony', 2: 'Peter', 9: 'Strange'};

  //Once you have specified an specific type for the key or the value, you can't introduce any type of variable
  // Map<int, String> wrongMap = {
  //   1: 'Tony',
  //   2: 'Peter',
  //   9: 'Strange',
  //   "Alfredo": 4
  // };

  //To add new element to the map
  personas.addAll({4: 'Banner'});

  print('personas $personas');

  //To get the value of one entrance, you need to specify the key
  print("personas[2] ${personas[2]}");
}
