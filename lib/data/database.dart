import 'package:hive/hive.dart';

class toDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Excersice", false]
    ];
  }

  // load data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateData() {
    _myBox.put("TODOLISR", toDoList);
  }
}
