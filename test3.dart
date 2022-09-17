extension FirstWhereOrNullExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (E element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

class Test {
  final String a;
  final String b;
  final String c;
  Test({
    required this.a,
    required this.b,
    required this.c,
  });
}

void main() {
  List<Test> a = [
    Test(
      a: 'h',
      b: 'neon',
      c: 'argon',
    ),
    Test(
      a: 'e',
      b: 'neon',
      c: 'argon',
    ),
    Test(
      a: 'l',
      b: 'neon',
      c: 'argon',
    )
  ];
  var cc = a.where((i) {
    print(i);
    return i.a == 'l';
  });
  if (cc.isNotEmpty) {
    print(cc.first);
  }
  // log(a.firstWhere((i) => i[10] == 'neon'));
}
