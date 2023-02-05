class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var bob = new Player(name: "Bob", xp: 100, team: "red");
  var potato = bob
    ..name = 'kim'
    ..xp = 123
    ..team = 'blue'
    ..sayHello();
}
