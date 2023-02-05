String capitalizezName(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  String? name;
  name ??= 'Bob';
  name = null;
  name ??= 'another';
  print(name);
}
