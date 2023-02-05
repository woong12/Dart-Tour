class Player {
  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'Red',
        this.xp = 0;

  Player.createBluePlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'Blue',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player.createRedPlayer(
    name: 'Bob',
    age: 20,
  );
  var player2 = Player.createBluePlayer('kim', 10);
}
