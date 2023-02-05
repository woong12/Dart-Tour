String sayHello(String name, int age, [String? country = 'korea']) =>
    'Hello $name, you are $age years old from $country';

void main() {
  var results = sayHello('Bob', 12);
  print(results);
}
