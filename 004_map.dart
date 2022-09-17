void main() {
  const a = {};

  // checkk is empty
  print(a.isEmpty);

  // nullable in map
  Map<String, int>? name = null;
  print(name?['su']);

  Map<String, Object> obj = {'name': 'jack', 'age': 20};
  final planets = <int, String>{
    1: 'Mercury',
    2: 'Venus',
    3: 'Earth',
    4: 'Mars'
  };

  // keys and values
  print(obj.keys);
  print(obj.values);

  // length and entries
  print(obj.entries);
  print(obj.length);

  // update map obj
  obj.update('name', (value) => "New");
  print(obj);

  // if obj key ,update map obj else create
  Map<String, int> ages = {'aung': 2, 'kg': 3};
  ages.update('kg', (existValue) {
    print(existValue);
    return 5;
  }, ifAbsent: () {
    return 5;
  });
  print(ages);
  ages.update('su', (value) {
    print(value);
    return 10;
  }, ifAbsent: () {
    return 10;
  });
  print(ages);

  // update all map obj
  planets.updateAll((key, value) => value.toLowerCase());
  print(planets);

  // add map obj
  final gasGiants = <int, String>{5: 'Jupiter', 6: 'Saturn'};
  final iceGiants = <int, String>{7: 'Uranus', 8: 'Neptune'};
  planets.addEntries(gasGiants.entries);
  planets.addEntries(iceGiants.entries);
  print(planets);

  // add all obj
  planets.addAll({9: 'Galaxy', 10: 'Stars'});
  print(planets);

  // remove map
  planets.remove(10);
  print(planets);

  // Removes all entries of this map that satisfy
  final bb = {0: 10, 1: 5, 2: 86, 3: 34, 4: 99};
  bb.removeWhere((key, value) => value % 2 != 0);
  print(bb);
  planets.removeWhere((key, value) => value.startsWith('e'));
  print(planets);

  // check key and value
  print(obj.containsKey('name'));
  print(obj.containsValue("mandalay"));

  // clear all map obj
  obj.clear();
  print(obj);

  // In map, there is forEach and map methods to loop map
  Map<String, Object> aa = {'name': 'jack', 'age': 20};
  for (var i in aa.entries) {
    // a.entries => Iterable MapEntry<key,value>
    print(i);
  }
  var b = aa.entries.map((k) => k.value).toList();
  print(b);

  final diameters = <num, String>{1.0: 'Earth'};
  final result = diameters.putIfAbsent(0.383, () => 'Random');
  print(result); // Mercury
}
