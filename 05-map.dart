// Default entrance method executed by all .dart files
void main() {
  // Dynamic key and value types
  Map dynamicPerson = {'name': 'Carlos', 'age': 32, 'single': true};

  //To get a value isn't as another languages using a . because it only shows the specific methods for the Map class
  //print(dynamicPerson.name);

  // Inferring the type without specifying the key / value 's types, are dynamic
  // ${}    if you want to evaluate a expression
  print('dynamicPerson.runtimeType ${dynamicPerson.runtimeType}');

  //Variable with the value of the map's key
  String property = 'single';

  Map<String, dynamic> persona = {
    // Indentation is ignored by Dart
         'name': 'Carlos',
    'age': 32,
    'single': true
  };

  // Get map's elements by key
  var name = persona['name'];
  var age = persona['age'];
  var isSingle = persona['single'];
  print('name $name');
  print('age $age');
  print('isSingle $isSingle');

  // Get non existing key
  var nonExistingKey = persona['nonExistingKey'];
  print('nonExistingKey $nonExistingKey');

  // Without declaring the variable, and making the interpolation of an expression, using {}
  print('persona[\'name\'\] ${persona['name']}');

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

  //Get the value of one entrance, you need to specify the key
  print("personas[2] ${personas[2]}");

}
