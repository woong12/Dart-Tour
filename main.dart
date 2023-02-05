class Player {
  final String name;
  int xp;

  Player(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player("Bob", 123);
  player.sayHello();
  var player2 = Player("kim", 1203);
  player2.sayHello();
}
