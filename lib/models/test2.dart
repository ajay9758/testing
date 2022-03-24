// void main(List<String> args) {
//   List<int> l = [1, 2, 1, 5, 23, 23, 2, 9];
//   List l1;
//   l1 = l.map((e) => e+1).toList();
//   print(l1);
//   Map m = {"name": "ajay", "age": 11, "s": 3};
//   m.forEach((key, value) {
//     print(value);
//     print(key);
//   });
// }
//***********************************************************************Constructor******************************************************/

class Ajay {
  int _a = 10;

  // Ajay() {
  //   print("i m called");
  // }

  Ajay(int a) {
    _a = a;
  }

  void seta(int a) {
    _a = a;
  }

  int geta() {
    return _a;
  }
}

void main() {
  // Ajay obj = Ajay();
  // print(obj.geta());
  // obj.seta(1222);
  // print(obj.geta());

  Ajay obj2 = Ajay(98);

  print(obj2.geta());
}
