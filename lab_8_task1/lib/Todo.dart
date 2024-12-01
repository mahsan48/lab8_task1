import 'package:flutter/foundation.dart';

class TodoModel extends ChangeNotifier {
  List<Map<String, dynamic>> _tasks = [];

  List<Map<String, dynamic>> get tasks => _tasks;

  void addTask(String taskTitle) {
    _tasks.add({'title': taskTitle, 'completed': false});
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index]['completed'] = !_tasks[index]['completed'];
    notifyListeners();
  }
}
