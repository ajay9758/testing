import 'const.dart';

class ConstList {
  late String name;
  late String rollNo;

  String listName(int tileNo)  {
    return student[tileNo].name;
  }

  listRollNo(int tileNo) {
    return student[tileNo].rollNo;
  }

  List student = [
    Constructor("a1", '11'),
    Constructor("a2", '11'),
    Constructor("a3", '11'),
    Constructor("a4", '11'),
    Constructor("a5", '11'),
  ];
}
