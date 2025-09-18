// A simple Task Manager using DART
// Author: Jaffar-Kazmi
// Demonstrates Dart basics: variables, loops, functions, classes, async, etc.

import 'dart:io';

class Task{
  String title;
  String category;
  bool isDone;

  Task(this.title, {this.category = "General", this.isDone = false});

  @override
  String toString(){
    return "$title [Category: $category] ${isDone ? '(Done)' : ''}";
  }

}

List<Task> tasks = [];

void main(){
  String appName = "Task Master";
  double version = 1.0;
  bool isRunning = true;
  var smile = '\u263A';

  print("Welcome to $appName $version $smile");

  while(isRunning){
    int choice = menu();

    switch(choice){
      case 1:
        addTask();
        break;
      case 2:
        viewTask();
        break;
      case 3:
        deleteTask();
        break;
      case 4:
        markTaskDone();
      case 5:
        print("Exiting the program...");
        isRunning = false;
        break;
      default: 
        print("Invalid choice, please try again.");
    }
  }

}

int menu(){
  print("---Task Master Menu---");
  print("1. Add Task.");
  print("2. View Tasks.");
  print("3. Delete Tasks.");
  print("4. Mark Task as Done");
  print("5. Exit.");
  stdout.write("Enter your choice: ");

  String? input = stdin.readLineSync();
  return int.tryParse(input ?? '') ?? 0;
}

void addTask(){
  stdout.write("Enter task name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter task category: ");
  String? category = stdin.readLineSync();

  if (name!= null && name.isNotEmpty){
    String finalCategory = (category == null || category.isEmpty)? "General" : category;
    tasks.add(Task(name, category: finalCategory));
    print("Task '$name' added successfully under category '$finalCategory'.");
  } else {
    print("Invalid task name.");
  }
}

void viewTask(){
  if(tasks.isEmpty){
    print("Task List Is Empty.");
    return;
  }

  for(int i = 0; i<tasks.length; i++){
    print("${i+1}. ${tasks[i]}");
  }
}

void deleteTask() {
  viewTask();

  if (tasks.isEmpty) return;

  stdout.write("Enter task number to delete: ");
  String? input  = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');

  if (index != null && index>0 && index <= tasks.length) {
    Task removed = tasks.removeAt(index-1);
    print("Task '${removed.title}' deleted.");
  } else {
    print("Invalid Task Number.");
  }
}

void markTaskDone(){
  viewTask();

  if(tasks.isEmpty) return;

  stdout.write("Enter Task number to mark as done: ");
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');

  if( index!= null && index>0 && index<=tasks.length){
    tasks[index-1].isDone = true;
    print("'${tasks[index-1].title}' Marked As Done.");
  } else {
    print("Invalid Task Number");
  }
}

