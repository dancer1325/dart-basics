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

  final friendExtends = FriendExtends();
  print(friendExtends.toString());

  final friendImplements = FriendImplements("power", "FriendImplements");
  print(friendImplements.toString());

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

// To extend or to implement, is unnecessary to come from an abstract class
class CharacterNotAbstract {
  late String power;
  late String name;
}

// Extending from a non-abstract class
class FriendExtends extends CharacterNotAbstract {
  int numberOfFriends = 2;

  FriendExtends() {
    // Unnecessary to use this
    power = '10';
    name = 'Friend';
  }

  String toString() {
    return "FriendExtends.toString() : name $name, power $power and numberOfFriends $numberOfFriends";
  }
}

// Implementing from a non-abstract class
class FriendImplements implements CharacterNotAbstract {
  String name;
  String power;
  int numberOfFriends = 2;

  // https://dart.dev/tools/diagnostic-messages?utm_source=dartdev&utm_medium=redir&utm_id=diagcode&utm_content=not_initialized_non_nullable_instance_field#not_initialized_non_nullable_instance_field
  FriendImplements(this.power, this.name) {
    // Unnecessary to use this
    power = this.power;
    name = this.name;
  }

  String toString() {
    return "FriendImplements.toString() : name $name, power $power and numberOfFriends $numberOfFriends";
  }


}
