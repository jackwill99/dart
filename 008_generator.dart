void main() {
  // synchronous generator
  /**
   It means; the execution of all instructions that follow the getNumbers() method call will be blocked
   until the getNumbers() method doesn't complete its execution.
   The getNumbers() executes nothing until it gets Iterable values.
   It waits for Iterable values for further execution.
   */
  print('synchronous generator start');
  Iterable<int> sy = getNumbers(3);
  print("after generating , looping start");
  for (var i in sy) {
    print(i);
  }
  print("i'm waiting sync looping end");

  // asynchronous generator
  print('asynchronous generator start');
  Stream<int> asy = asyNumbers(3);
  print("after generating , looping start");
  asy.listen((int i) => print(i));
  print("i'll skip looping end");
}

// synchronous generator --> Iterable Object
Iterable<int> getNumbers(int num) sync* {
  print('starting generator function');
  for (var i = 0; i < num; i++) {
    yield i;
  }
  print('generator function end');
}

// asynchronous generator --> Stream Object
Stream<int> asyNumbers(int num) async* {
  print('starting generator function');
  await new Future.delayed(new Duration(seconds: 5)); //sleep 3s
  for (var i = 0; i < num; i++) {
    await new Future.delayed(new Duration(seconds: 3)); //sleep 1s  
    yield i;
  }
  print('generator function end');
}
