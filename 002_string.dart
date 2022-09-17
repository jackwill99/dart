void main() {
  String a = "Hello";

  // check empty or not
  print(a.isEmpty);

  // length
  print(a.length);

  // comparing
  var relation = 'Dart'.compareTo('Go');
  print(relation); // < 0
  relation = 'Go'.compareTo('Forward');
  print(relation); // > 0
  relation = 'Forward'.compareTo('Forward');
  print(relation); // 0

  // contains in its string --> bool
  const string = 'Dart strings';
  print(string.contains('D'));

  // split
  const string1 = 'Hello world!';
  print(string1.split(' '));

  // substring
  const string2 = 'dartlang';
  print(string2.substring(1, 4));
}
