void main() {
  var name = 'Bob';
  /*
  Variables store references. The variable called name contains a reference to
  a String object with a value of “Bob”.

  The type of the name variable is inferred to be String, but you can change
  that type by specifying it. If an object isn’t restricted to a single type,
   specify the Object type (or dynamic if necessary).
   */
  Object myName = 'Bob';
  // Another option is to explicitly declare the type that would be inferred:
  String bobName = "Bob";
  List test = [2, 3];
  test.add("hay");

  // Function with named parameter
  // i used nullable 
  void namedFunction({String? name, int? age}) {
    print(name);
    print(age);
  }

  namedFunction(name: 'Jack', age: 20);
}
