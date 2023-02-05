class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(
    name: 'Bob',
    xp: 100,
    team: 'Red',
    age: 20,
  );
  player.sayHello();
  var player2 = Player(
    name: 'kim',
    xp: 200,
    team: 'Blue',
    age: 10,
  );
  player2.sayHello();
}
