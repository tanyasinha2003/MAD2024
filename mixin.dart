mixin Logger {
  void debug() {
    print("debug function");
  }

  void info() {
    print("info function");
  }

  void warning() {
    print("warning function");
  }

  void error() {
    print("error function");
  }
}

class Character with Logger {
  String? name;
  int? points;

  Character(this.name, this.points);

  @override
  String toString() {
    return "$name and $points";
  }
  
}

class Warrior extends Character {
  String? swordType;

  Warrior(String name, int points,this.swordType): super(name, points);

  void checkError(){
    error();
  }

  @override
  String toString() {
    return "$name, $points, $swordType";
  }
}

class Mage extends Character {
  String? power;

  Mage(String name, int points,this.power): super(name, points);

  @override
  String toString() {
    return "$name , $points and $power";
  }
}

class Rogue extends Character {
  String? color;

  Rogue(String name, int points,this.color): super(name, points);

  @override
  String toString() {
    return "$name , $points and $color";
  }
}


void main() {
   
    Character c = Character("Tanya", 50);
     print(c.toString());
    c.debug();
    c.info();
    Warrior warrior = Warrior("flow", 20, "abc");
    warrior.checkError();
    print(warrior);
  }