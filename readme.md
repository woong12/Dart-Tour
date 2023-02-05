<h1>Variables</h1>
<h4>---1 main함수</h4>

main함수는 모든 Dart 프로그램의 Entry point이다.
main 함수에서 쓴 코드가 호출된다. (만약 main이 없다면 실행이 되지 않음)
dart는 자동으로 세미콜론을 붙여주지 않기 때문에 직접 붙여야 한다. (일부러 세미콜론을 안 쓸 때가 있기 때문)

```dart
void main(){
  print("hello world");
}
```

<h4>---2 변수를 만드는 2가지 방법</h4>

```dart
void main() {
  var name = "pizza"; // 방법 1
  String name = "chicken"; // 방법 2
  name = "chicken ";
}
```

함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용하고
class에서 변수나 property를 선언할 때는 타입을 지정해준다.

<h4>---3 Dynamic 타입</h4>

여러가지 타입을 가질 수 있는 변수에 쓰는 키워드이다. (해당 변수의 타입을 알 수 없을 때 주로 사용)
변수를 선언할 때 dynamic을 쓰거나 값을 지정하지 않으면 dynamic 타입을 가진다.

```dart
void main(){
  dynamic name;
  var name2;
}
```

<h4>---4 Null Safety</h4>

개발자가 null 값을 참조할 수 없도록 하는 것이다.
String뒤에 ?를 붙여줌으로서 name이 String 또는 null이 될 수 있다고 명시해준 것입니다.
기본적으로 모든 변수는 non-nullable(null이 될 수 없음)이다.

```dart
void main() {
  String? name = "hello";
  name = null;
}
```

<h4>---5 final 변수</h4>

var대신 final로 변수를 만들게 되면 이 변수는 수정할 수 없게 된다. (딱 한 번만 설정될 수 있음)
자바스크립트의 const랑 비슷하다.

```dart
void main() {
  final name = "pizza";
  name = "ham"; // 수정 불가

  final String username = "tom";
  name = "tom2"; // 수정 불가
}
```

<h4>---6 late 변수</h4>

초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다.
flutter로 data fecthing을 할 때 유용하다.
late 변수를 만들고, API에 요청을 보낸 뒤에 API에서 값을 보내주면 그 응답값을 late변수에 넣어 사용할 수 있다.

```dart
void main() {
  late final String name;

  print(name); // name 변수에 접근 불가
}
```

<h4>---7 const 변수</h4>

dart에서 const는 compile-time constant를 만들어준다.
const는 컴파일할 때 알고 있는 값을 사용해야 한다.
만약 어떤 값인지 모르고, 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 그건 const가 아닌 final이나 var가 되어야 한다.

```dart
void main() {
  const name = "tom"; // 컴파일 시점에 바뀌지 않는 값
  final username=fetchAPI(); // 컴파일 시점에 바뀌는 값
}
```

const: 컴파일 시점에 바뀌지 않는 값 (상수)
final: 컴파일 시점에 바뀌는 값 (API에서 받아온 값, 사용자 입력값)

---summary <br>
final: 값을 재할당하지 못하는 변수를 만듦
dynamic type: 어떤 타입의 데이터가 들어올 지 모를 때 사용함
const: 컴파일 할 때 값을 알고 있는 변수
final: 런타임 중에 만들어질 수 있는 변수
late: final, var, String같은 것들 앞에 써줄 수 있는 수식어로서 어떤 데이터가 올 지 모를 때 사용한다.

<h1>Data Types</h1>
<h4>---1 기본 데이터 타입</h4>

아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체)
이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.

```dart
void main() {
  String name = "tom";
  bool isPlay = true;
  int age = 10;
  double money = 52.55;
  num x = 12;
  num y = 1.2;
}
```

<h4>---2 List를 사용하는 2가지 방법</h4>

```dart
void main() {
  List numbers = [1, 2, 3];
  var number2 = [4, 5, 6];
}
```

List는 collection if와 collection for를 지원한다.
collection if는 List를 만들 때, if를 통해 존재할 수도 안 할 수도 있는 요소를 가지고 만들 수 있다.

```dart
void main() {
  var giveMeFive = true;
  var item = [
    1,
    2,
    3,
    if (giveMeFive) 10, // giveMeFive가 true이면 10을 넣음
  ];
  print(item);
}
```

<h4>---3 변수 사용하는 방법</h4>

$달러 기호를 붙이고 사용할 변수를 적어주면 된다.
만약 무언가를 계산하고 싶다면 ${ } 형태로 적어주면 된다.

```dart
void main(){
  var name = "tom";
  var age = 10;
  var greeting = "hello $name, I'm ${age + 5}";
}
```

<h4>---4 Collection For</h4>

Dart는 조건문(if) 및 반복(for)을 사용하여 컬렉션을 구축하는 데 사용할 수 있는 컬렉션 if 및 컬렉션 for도 제공합니다.

```dart
void main() {
  var oldFriends = ["aaa", "bbb"];
  var newFriends = [
    "tom",
    "jon",
    for (var friend in oldFriends) "❤️ $friend"
  ];

  print(newFriends); // [tom, jon, ❤️ aaa, ❤️ bbb]
}
```

<h4>---5 Maps</h4>

일반적으로 맵은 key와 value를 연결하는 객체입니다. 키와 값 모두 모든 유형의 객체가 될 수 있습니다. 각 키는 한 번만 발생하지만 동일한 값을 여러 번 사용할 수 있습니다.

```dart
var gifts = {
  // Key: Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

// Map 생성자를 사용하여 동일한 객체를 만들 수 있습니다.
var gifts2 = Map();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';
```

<h4>---6 Sets</h4>

Set에 속한 모든 아이템들이 유니크해야될 때 사용한다.
유니크할 필요가 없다면 List를 사용하면 된다.

```dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
```

<h1>Functions</h1>
<h4>---1 Functions</h4>

Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function입니다. 이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다.

```dart
// 하나의 표현식만 포함하는 함수의 경우 아래와 같이 단축 구문을 사용할 수 있습니다.
String sayHello(String name) => "Hello ${name} nice to meet you.";

num plus(num a, num b) => a + b;

void main() {
  print(sayHello("sugar"));
}
```

<h4>---2 Named parameters</h4>

Named parameters는 명시적으로 required로 표시되지 않는 한 선택 사항입니다. 기본값을 제공하지 않거나 Named parameters를 필수로 표시하지 않으면 해당 유형은 기본값이 null이 되므로 null을 허용해야 합니다.

```dart
String sayHello(
  {required String name, required int age, required String country}) {
  return "${name} / ${age} / ${country}";
}

void main() {
  print(sayHello(name: "sugar", age: 10, country: "Korea"));
}
```

<h4>---3 Optional Positional Parameters</h4>

Dart에서 [] 은 optional, positional parameter를 명시할 때 사용된다.
name, age는 필수값이고 []를 통해 country를 optional값으로 지정해줄 수 있다.

```dart
String sayHello(String name, int age, [String? country = ""]) {
  return 'Hello ${name}, You are ${age} from the ${country}';
}

void main() {
  var result = sayHello("sugar", 10);
  print(result);
}
```

<h4>---4 ?? 연산자</h4>

?? 연산자를 이용하면 왼쪽 값이 null인지 체크해서 null이 아니면 왼쪽 값을 리턴하고 null이면 오른쪽 값을 리턴한다.

```dart
String capitalizeName(String? name) {
  return name?.toUpperCase() ?? "";
}
```

??= 연산자를 이용하면 변수 안에 값이 null일 때를 체크해서 값을 할당해줄 수 있다.

```dart
void main() {
  String? name;
  name ??= "sugar";
  name = null;
  name ??= "js";
  print(name); // js
}
```

<h4>---5 TypeDef</h4>

자료형에 사용자가 원하는 alias를 붙일 수 있게 해준다. (자료형 이름의 별명을 만들 때 사용)

```dart
typedef ListOfInts = List;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversedList = list.reversed.toList();
  return reversedList;
}
```

<h1>Classes</h1>
<h4>---1 Class</h4>

dart에서 property를 선언할 때는 타입을 사용해서 정의한다.

```dart
class Player {
  final String name = 'Bob';
  final int age = 17;
  void sayName(){
  // class method안에서는 this를 쓰지 않는 것을 권장한다.
  print("Hi my name is $name")
  }
}

void main(){
  // new를 꼭 붙이지 않아도 된다.
  var player =Player();
}
```

<h4>---2 Constructors</h4>

dart에서 생성자(constructor) 함수는 클래스 이름과 같아야 한다.

```dart
class Player {
  // 이럴 때 late를 사용한다.
  late final String name;
  late final int age;

  // 클래스 이름과 같아야한다!
  Player(String name){
    this.name = name;
  }
}
void main(){
// Player 클래스의 인스턴스 생성!
var player = Player("jisoung", 1500);
```

위의 생성자 함수는 다음과 같이 줄일 수 있다.

```dart
// 생략
Player(this.name, this.age);
```

첫 번째 인자는 this.name으로 두 번째 인자는 this.age로 갈 것이다.

<h4>---3 Named Constructor Parameters</h4>

클래스가 거대해질 경우 위와 같이 생성자 함수를 만드는 것은 비효율적이다.
이 문제를 혀결하기위해 중괄호를 이용하거나 name parameter를 이용한다.

```dart
class Player {
  final String name;
  int xp;
  String team;

  //변수가 null일 수도 있기 때문에 required를 이용하거나 기본 값을 줘서 처리해 줘야한다.
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });
}

void main() {
  var player = Player(
    name: 'Bob',
    xp: 100,
    team: 'Red',
  );
}

```

<h4>---4 Named Constructors</h4>

생성자 함수를 여러개 만들려면 콜론(:)을 사용해 특별한 생성자 함수를 만들 수 있다.
콜론을 넣음으로써 dart에게 여기서 객체를 초기화하라고 명령할 수 있다.

```dart
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

  }
}

void main() {
  var player = Player.createRedPlayer(
    name: 'Bob',
    age: 20,
  );
  var player2 = Player.createBluePlayer('kim', 10);
}
```

Recap

```dart
class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var apiData = [
    {
      "name": 'Bob',
      "team": 'Red',
      "xp": 0,
    },
    {
      "name": 'kim',
      "team": 'Red',
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
```

<h4>---5 Cascade Notation</h4>

반복되는 부분을 ..으로 해결할 수 있다.
각 ..들은 bob을 가리킨다. 앞에 class가 있으면 그 클래스를 가리킨다.

```dart
void main() {
  var bob = new Player(name: "Bob", xp: 100, team: "red");
  var potato = bob
    ..name = 'kim'
    ..xp = 123
    ..team = 'blue'
    ..sayHello();
}
```

<h4>---6 Enums</h4>

enum은 우리가 실수하지 않도록 도와주는 타입이다.
dart에서 enum type을 만드는 법은 다음과 같다

```dart
enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player {
  XPLevel xp;
  Team team;

  Player({
    required this.xp,
    required this.team,
  });
}

void main() {
  var bob = Player(
    xp: XPLevel.medium,
    team: Team.red,
  );
}
```

<h4>---7 Abstract Classes</h4>

추상화 클래스는 다른 클래스들이 직접 구현 해야하는 메소드들을 모아놓은 일종의 `청사진`이라 보면 된다.
추상 클래스에서는 기능을 구현하지 않는다.

```dart
abstract class Human {
  void walk();
}
```

extends를 이용해 상속, 확장을 할 수 있다.

```dart
  abstract class Human {
  void walk();
}
class Player extends Human {
  // 생략
  void walk(){
    print("working!");
  }
}
```
