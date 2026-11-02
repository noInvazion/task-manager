import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  List toDoList = [];

  // reference the box

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Exercise", false],
    ];
  }

  void loadData() {
    toDoList = List.from(_myBox.get("TODOLIST"));
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}