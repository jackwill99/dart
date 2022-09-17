void main() {
  var marks = 74;

  // if else-if
  if (marks > 85) {
    print("Excellent");
  } else if (marks > 75) {
    print("Very Good");
  } else {
    print("Average");
  }

  // switch
  int Roll_num = 90014;

  switch (Roll_num) {
    case 90009:
      print("My name is Joseph");
      break;

    // default block
    default:
      print("Roll number is not found");
  }

  // for in
  List<int> aa = [1, 20, 15, 29, 80];
  int sum = 0;
  for (int i in aa) {
    sum += i;
  }
  print(sum);

  // map can loop only list
  // map return MappedListIterable -> (value,value)
  // so use var or Iterator of it's type
  List<int> l = [1, 2, 3, 4];
  var t1 = l.map((i) {
    return i * 7;
  });
  print(t1);
  print(t1.runtimeType);

  // Iterator t1 = l.map((i){
  //   return i* 7;
  // })

  // where
  final numbers = <int>[1, 2, 3, 5, 6, 7];
  var result = numbers.where((x) => x < 5); // (1, 2, 3)
  var result1 = numbers.where((x) => x > 5); // (6, 7)
  var result2 = numbers.where((x) => x.isEven); // (2, 6)
  print(result);
  print(result1);
  print(result2);

  // map, where --> return Iterable Object, not List Object
}
