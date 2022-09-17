//! doNotModify required a string parameter state
class doNotModify {
  final String not_modify;
  doNotModify({required this.not_modify});

  String modify() {
    return "No Not Modify Body :: ${not_modify}";
  }
}

void main() {
  /*
  String test({String? name}) {
    doNotModify a = doNotModify(not_modify: name);
    return a.modify();
  }
  */
  //! It will throw error 'The argument type String can not assigned to the parameter .....'
  //? test function is Nullable. So when we pass parameter in calling doNotModify class
  //? it may be Nullable value means it may have a String value or Null value.
  //? But our doNotModify class required a String constructor value
  //? Solution is If you can Nullable to the variable not_modify of doNotModify class,
  //? Or assume doNotModify class is the Flutter core Function and you can't change this.
  //? In that condiction, use Assertion Operator(!). It means that not_modify Value is not null, and it's safe to assign it to a non-nullable variable.
  /*
  String test({String? name}) {
    doNotModify a = doNotModify(not_modify: name!);
    return a.modify();
  }
  print(test());
  */
  //! But if you apply a null value, will throw a runtime exception

  //* You must pass value in doNotModify when using !
  String aggree({String? name}) {
    doNotModify a = doNotModify(not_modify: name!);
    return a.modify();
  }

  print(aggree(name: "I aggree"));
}
