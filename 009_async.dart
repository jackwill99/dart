//  To interact with these asynchronous results
Future<void> printOrderMessage() async {
  var order = await fetchUserOrder();
  print('Awaiting user order...');
  print('Your order is: $order');
}

// asynchronous computation
Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
}

void main() async {
  print('start');
  countSeconds(4);
  print('middle');
  await printOrderMessage();
  print('end');
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
/**
  Such asynchronous computations usually provide their result as a Future or, 
  if the result has multiple parts, as a Stream.
  To interact with these asynchronous results, 
  you can use the async and await keywords.
  Most asynchronous functions are just async Dart functions that depend, 
  possibly deep down, on an inherently asynchronous computation.
  An async function runs synchronously until the first await keyword. 
  Within an async function body, all synchronous code before the first await keyword executes immediately.
 */