enum EnumofYear {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December,
}

void main() {
  // An enumeration is a set of values called as elements, members, etc.
  //This is essential when we carried out the operation with the limited set of values available for variable.
  print(EnumofYear.values);  
  EnumofYear.values.forEach((v) => print('value: $v, index: ${v.index}'));   
}
