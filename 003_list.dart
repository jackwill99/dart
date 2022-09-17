void main() {
  final growableList = <String>['A', 'B']; // Creates growable list.
  growableList[0] = 'G';
  print(growableList); // [G, B]

  // list add
  growableList.add('X'); // [G, B, X]

  // list add all
  growableList.addAll({'C', 'B'});
  print(growableList); // [G, B, X, C, B]

  // list remove
  growableList.remove('C');
  growableList.removeLast();
  print(growableList); // [G, B, X]

  final maleDogs = ["Milo"]; // mutable single-assignment variable
  maleDogs.add("Cooper"); // ✅
  // maleDogs = ["Cooper"];  ❌

  // find index
  final indexA = growableList.indexOf('A'); // -1 (not in the list)
  final firstIndexB = growableList.indexOf('B'); // 1
  final lastIndexB = growableList.lastIndexOf('B'); // 4

  // To insert an element at position in the list
  growableList.insert(1, 'New');
  print(growableList); // [G, New, B, X]

  // sorting --> asc --> des
  growableList.sort((a, b) => a.compareTo(b));
  print(growableList); // [A, AB, F, F]
  growableList.sort((a, b) => b.compareTo(a));
  print(growableList);

  // list to as Map
  var words = <String>['fee', 'fi', 'foe', 'fem'];
  var map = words.asMap(); // {0: fee, 1: fi, 2: fo, 3: fum}
  map.keys.toList(); // [0, 1, 2, 3]

  // search in list
  var tt = words.where((e) => e.contains(new RegExp(r'(.*fe.*)', caseSensitive: false)));
  print(tt);
}
