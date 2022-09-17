// pattern one
class Person {
  String? name;
  int? age;

  Person({required String inputName, int? inputAge}) {
    this.name = inputName;
    age = inputAge;
  }
}

// pattern two
class Person2 {
  String? name;
  int? age;
  Person2({required this.name, this.age});
}

// Super class Car
class Car {
  int speed = 180;

  void message() {
    print("Super class can drive at fast at ${speed} mph.");
  }
}

// sub class Bike extending Car
class Bike extends Car {
  int speed = 110;

  void display() {
    //print varible of the base class (Bike)
    print("The speed of car: ${super.speed}");
  }

  void measure() {
    // will invoke or call current class  method
    display();

    // will invoke or call parent class displa() method
    super.message();
  }
}

// super constructor
class Super {
  final String? name;
  final int? age;
  Super({this.name, this.age});

  void myInfo() {
    print("My name is ${name} and I'm ${age} years old.");
  }
}

class SubClass extends Super {
  final String? name;
  final int? age;
  SubClass({this.name, this.age});

  /**
     this will be an error when calling super method `myInfo`
     because this method takes `name` and `age` parameters.
     But we define our parameters in SubClass as `nick` and `digit`.
     If u want to do this, u need to call super constructor.
   */
  // final String? nick;
  // final int? digit;
  // SubClass({this.nick, this.digit});

  void show() {
    super.myInfo();
  }
}

// calling super constructor
class Student {
  final String? university;
  final int? marks;
  Student({this.university, this.marks});

  void studentInfo() {
    print("The student is attending at the ${university} with ${marks}");
  }
}

class Boy extends Student {
  final String? uni;
  final int? totalMarks;
  final String? major;
  // here calling super constructor
  Boy({this.totalMarks, this.uni, this.major})
      : super(marks: totalMarks, university: uni);

  // overriding super method
  void studentInfo() {
    print(
        "The student is studying ${major} at the ${university} with ${marks}");
  }

  void showInfo() {
    print('calling super method');
    super.studentInfo();
    print('below is overriding super method');
    studentInfo();
  }
}

// getter and setter
class GetSet {
  String? name;
  int? age;
  GetSet({this.age, this.name});

  get getAge {
    return age;
  }

  set setAge(int year) {
    age = DateTime.now().year.toInt() - year;
  }
}

void main() {
  // pattern one
  var p1 = Person(inputAge: 20, inputName: "Max");

  // pattern two
  var p2 = Person2(age: 20, name: "Max");
  print('This is pattern one ${p1.name}');
  print('This is pattern two ${p2.name}');

  // Creating object of sub class
  Bike b = new Bike();
  b.display();
  b.measure();

  // super constructor
  SubClass aaa = new SubClass(age: 20, name: 'Wai Lwin Phyo');
  // SubClass aaa = new SubClass(digit: 20, nick: 'Wai Lwin Phyo');
  aaa.show();

  // calling super constructor
  Boy bbb = new Boy(totalMarks: 438, uni: 'Mandalay', major: 'Physics');
  bbb.showInfo();

  // getter and setter
  GetSet ggg = new GetSet(age: 15, name: 'jack');
  print('the age is ${ggg.getAge}');
  ggg.setAge = 2001;
  print('now the age is ${ggg.age}');
}
/**
 The static and final method cannot be inherited in the subclass as they are accessible in their own class
 A method that cannot be inherited, then it cannot be overridden.
 */