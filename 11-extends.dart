// Default entrance method executed by all .dart files
void main() {
  
  final superman = new Hero();
  //As Hero extends to Character, it contains also those properties
  // Unnecessary create setter methods for public attributes
  superman.name = 'Clark Kent';
  print(superman.toString());
  
  final luthor = new Villain();
  // Unnecessary create setter methods for public attributes
  luthor.name  = 'Lex Luthor';
  print(luthor.toString());
}

// To extend or to implement, is unnecessary to come from an abstract class
class CharacterNotAbstract {
  late String power;
  late String name;
}

//It's done abstract in order to avoid creating instance of Character
abstract class Character {
  late String power;
  late String name;

  String toString() {
    return "name $name";
  }
}

// Since you extend --> You don't need to override or indicate characteristics coming from base one (Contrary to implementation one)
class Hero extends Character {
  late int courage = 5;

  String toString() {
    return "super.toString() ${super.toString()} courage $courage";
  }
}

class Villain extends Character {
  late int evil = 9;

  String toString() {
    return "super.toString() ${super.toString()} evil $evil";
  }
}
