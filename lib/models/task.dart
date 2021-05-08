import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get tasksCount => tasks.length;

  void addTask(String newTaskName) {
    final Task task = Task(name: newTaskName);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}

class Task {
  String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    this.isDone = !this.isDone;
  }
}
