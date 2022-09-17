mixin Walk {
  void walk(species) {
    print("${species} can walk");
  }
}

mixin Fly {
  void fly(species) {
    print("${species} can fly");
  }
}

class Bat with Walk, Fly {
  void whoami() {
    print("I am Bat");
  }
}

class Cat with Walk {
  void whoami() {
    print("I am Cat");
  }
}

void main() {
  var cat = Cat();
  cat.whoami();
  cat.walk('Cat');
  var bat = Bat();
  bat.whoami();
  bat.walk("Bat");
  bat.fly("Bat");
}
