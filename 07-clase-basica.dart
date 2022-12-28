import 'dart:convert';

// Default entrance method executed by all .dart files
void main() {
  //The type of the variable, coming from an instance of one class is intuited.
  var heroWithoutConstructor = new HeroWithoutConstructor();
  print(
      "heroWithoutConstructor $heroWithoutConstructor"); // Printing is just an instance of the class
  print(
      "heroWithoutConstructor.runtimeType ${heroWithoutConstructor.runtimeType}");
  print(
      "heroWithoutConstructor.toString() ${heroWithoutConstructor.toString()}"); // Same result as the interpolation itself

  //The type of the variable, coming from an instance of one class is intuited.
  var heroWithEmptyConstructor = new HeroWithEmptyConstructor();
  print(
      "heroWithEmptyConstructor $heroWithEmptyConstructor"); // Printing is just an instance of the class
  print(
      "heroWithEmptyConstructor.runtimeType ${heroWithEmptyConstructor.runtimeType}");
  print(
      "heroWithEmptyConstructor.toString() ${heroWithEmptyConstructor.toString()}"); // Same result as the interpolation itself

  // Instantiate a class, without using new keyword
  var heroWithoutBeingInstantiatedByNew = HeroWithEmptyConstructor();
  print(
      "heroWithoutBeingInstantiatedByNew $heroWithoutBeingInstantiatedByNew"); // Printing is just an instance of the class
  print(
      "heroWithoutBeingInstantiatedByNew.runtimeType ${heroWithoutBeingInstantiatedByNew.runtimeType}");
  print(
      "heroWithoutBeingInstantiatedByNew.toString() ${heroWithoutBeingInstantiatedByNew.toString()}"); // Same result as the interpolation itself
  // var --> You can instantiate or modifying it's value continuously
  heroWithoutBeingInstantiatedByNew = HeroWithEmptyConstructor();

  // final variable can't be adjusted
  final finalHeroInstantiated = HeroWithEmptyConstructor();
  // finalHeroInstantiated = HeroWithEmptyConstructor();      // It's wrong
  // vs constant in compilation time

  // Several constructors can be defined for each class
  var heroWithSeveralConstructors = HeroWithSeveralConstructors();
  var heroWithSeveralConstructorsAnotherName =
      HeroWithSeveralConstructors.AnotherName(3);

  //Specifying the type of the variable
  // Get same results as letting be inferred
  HeroWithoutConstructor heroSpecifyingTypeOfInstance =
      new HeroWithoutConstructor();
  print("heroSpecifyingTypeOfInstance $heroSpecifyingTypeOfInstance");
  print(
      "heroSpecifyingTypeOfInstance.runtimeType ${heroSpecifyingTypeOfInstance.runtimeType}");
  print(
      "heroSpecifyingTypeOfInstance.toString() ${heroSpecifyingTypeOfInstance.toString()}");

  // Based on position of the arguments
  var heroBasedOnArgumentsPosition =
      new Hero.constructorBasedOnArgumentsPosition('Logan', 'Regenerate');
  print("heroBasedOnArgumentsPosition $heroBasedOnArgumentsPosition");
  print(
      "heroBasedOnArgumentsPosition.runtimeType ${heroBasedOnArgumentsPosition.runtimeType}");
  print(
      "heroBasedOnArgumentsPosition.toString() ${heroBasedOnArgumentsPosition.toString()}");

  // Specifying the name arguments
  // If an attribute is handled the null, but we don't pass via initialization --> We get an error in compilation time
  // var heroSpecifyingArgumentsName = new Hero.constructorSpecifyingArgumentsName(power: 'Regeneration');
  var heroSpecifyingArgumentsName = new Hero.constructorSpecifyingArgumentsName(name: 'Alfredo', power: 'Handsome');
  print("heroSpecifyingArgumentsName $heroSpecifyingArgumentsName");
  print(
      "heroSpecifyingArgumentsName.runtimeType ${heroSpecifyingArgumentsName.runtimeType}");
  print(
      "heroSpecifyingArgumentsName.toString() ${heroSpecifyingArgumentsName.toString()}");

  // Short way assigning by position
  var heroAssigningByPosition = new Hero.constructorAssigningByPosition();
  print("heroAssigningByPosition $heroAssigningByPosition");
  print(
      "heroAssigningByPosition.runtimeType ${heroAssigningByPosition.runtimeType}");
  print(
      "heroAssigningByPosition.toString() ${heroAssigningByPosition.toString()}");

  final rawJson    = '{ "name": "Alfredo", "power":"Flirt" }';
  print("rawJson $rawJson");
  print("rawJson.runtimeType ${rawJson.runtimeType}");
  print("rawJson.toString() ${rawJson.toString()}");

  //Normally it returns a Map<dynamic, dynamic>
  Map parsedJson = json.decode( rawJson);
  //To print the string of the json decoded, which is a Map
  print( "parsedJson $parsedJson" );
  print( "parsedJson.runtimeType ${parsedJson.runtimeType}" );
  print( "parsedJson.toString() ${parsedJson.toString()}" );

  //To use the name constructor
  final heroFromJsonWithoutSpecifyingTheType = new Hero.fromJsonWithoutSpecifyingTheType( parsedJson );
  print("heroFromJsonWithoutSpecifyingTheType $heroFromJsonWithoutSpecifyingTheType");
  print(
      "heroFromJsonWithoutSpecifyingTheType.runtimeType ${heroFromJsonWithoutSpecifyingTheType.runtimeType}");
  print(
      "heroFromJsonWithoutSpecifyingTheType.toString() ${heroFromJsonWithoutSpecifyingTheType.toString()}");

  //To use the name constructor
  final heroFromJson = new Hero.fromJson( parsedJson );
  print("heroFromJson $heroFromJson");
  print(
      "heroFromJson.runtimeType ${heroFromJson.runtimeType}");
  print(
      "heroFromJson.toString() ${heroFromJson.toString()}");

}

// Name convention.
// First letter of the class is in capital
class HeroWithoutConstructor {
  // If you don't specify a constructor, a class has got by default the empty one
}

class HeroWithEmptyConstructor {
  // NameOfTheConstructor == NameOfTheClass
  HeroWithEmptyConstructor();
}

// Class with several constructors https://dart.dev/tools/diagnostic-messages#duplicate_constructor
class HeroWithSeveralConstructors {
  int x = 0;

  HeroWithSeveralConstructors() {
    print("HeroWithSeveralConstructors");
  }

  HeroWithSeveralConstructors.AnotherName(this.x) {
    print("HeroWithSeveralConstructors.AnotherName and x value $x");
  }
}

class Hero {
  //  https://dart.dev/guides/language/language-tour#late-variables
  // Reason to use it https://dart.dev/tools/diagnostic-messages#not_initialized_non_nullable_instance_field
  late String name = "Patricia";
  late String power;
  late String name2;
  String? name3;    // Unnecessary to mark as late, since it's optional
  late String name4;

  //Constructor indicating the type of arguments but without specifying the name of each argument
  Hero.constructorBasedOnArgumentsPosition(String name, String power) {
    this.name = name;
    this.power = power;

    // Specify the required non-initialized fields
    this.name2 = "";
    this.name4 = "";
    // Unnecessary to initialize name3, because it's optional
  }

  //Constructor with name arguments
  // https://dart.dev/tools/diagnostic-messages#missing_default_value_for_parameter
  Hero.constructorSpecifyingArgumentsName({ String? name , String power = 'Handsome'}) {
    this.name2 = name!;   // !  Assertion operator, to force to Dart to treat as non-nullable, a nullable expression
    this.name3 = name;
    this.name4 = name;
    this.power  = power;
  }

  //Short way to assign the properties by position
  // Required to indicate the non-initialized attributes
  Hero.constructorAssigningByPosition({ this.name3, this.power='Love', this.name2 = 'Guaperas', this.name4 = 'Guaperas4' });

  // Constructor to create an instance from a raw json
  Hero.fromJsonWithoutSpecifyingTheType( parsedJson ) {
  //  Extract the values from a map
  name = parsedJson['name'];
  power  = parsedJson['power'];
  // Specify the non-initialized fields
  this.name2 = "";
  this.name4 = "";
  }

  // Constructor to create an instance from a map json
  Hero.fromJson( Map parsedJson ) {
    //  Since parsedJson is a Map, you use [] to get the values with the name of the key that you get from the json
    //  Extract the values from a map
    name = parsedJson['name'];
    power  = parsedJson['power'];

    // Specify the non-initialized fields
    this.name2 = "";
    this.name4 = "";

  }

  String toString() {
    //Take care getting the value with $, because they are like the order of the operations
    final name = checkIfVariableExists(this.name);
    final power = checkIfVariableExists(this.power);
    final name2 = checkIfVariableExists(this.name2);
    final name3 = checkIfVariableExists(this.name3);
    final name4 = checkIfVariableExists(this.name4);
    return 'name ${name} power ${power} name2 ${name2} name3 ${name3} name4 ${name4}';
  }

//It's not mandatory to use this
// String toString() => 'nombre: $nombre - poder: $poder';
}

String checkIfVariableExists(String? variableToCheck) {
  if(variableToCheck != null) {
    return variableToCheck;
  }
  return "";
}
