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

  void main() {
    print("$name is logging in ");
    Character c = Character();
    c.debug();
    c.info();
  }
}

class Warrior extends Character {
  String? swordType;
}

class Mage extends Character {
  String? power;
}

class Rogue extends Character {
  String? color;
}
