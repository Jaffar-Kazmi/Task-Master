// A simple Task Manager using DART
// Author: Jaffar-Kazmi
// Demonstrates Dart basics: variables, loops, functions, classes, async, etc.

import 'dart:io';

List<String> tasks = [];

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
  print("4. Exit.");
  stdout.write("Enter your choice: ");

  String? input = stdin.readLineSync();
  return int.tryParse(input ?? '') ?? 0;
}

void addTask(){
  stdout.write("Enter task name: ");
  String? name = stdin.readLineSync();
  if (name!= null && name.isNotEmpty){
    tasks.add(name);
    print("Task Added Successfully.");
  } else {
    print("Invalid task name.");
  }
}

void viewTask(){
  if(tasks.isEmpty){
    print("No Tasks to display.");
    return;
  }
  for(int i=0; i<tasks.length; i++){
    print("Task ${i+1} : ${tasks[i]}");
  }
}

void deleteTask(){
  viewTask();

  if(tasks.isEmpty){
    return;
  }

  stdout.write("Enter task number to delete: ");
  String? input = stdin.readLineSync();
  int index = int.tryParse(input ?? '') ?? 0;

  if(index > 0 && index <= tasks.length){
    String removed = tasks.removeAt(index-1);
    print("Task '$removed' deleted successfully.");
  } else {
    print("Invalid Task number");
  }
}