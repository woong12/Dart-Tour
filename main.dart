void main() {
  var oldFriends = ['aa', 'bb'];
  var newFriends = [
    'cc',
    'dd',
    'ee',
    'ff',
    for (var friend in oldFriends) '♥ $friend'
  ];
  print(newFriends);
}
