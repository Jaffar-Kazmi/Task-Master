# Task Master - Dart Console Application

A simple command-line task management application built with Dart to demonstrate fundamental programming concepts and Dart language features.

## 📚 Learning Context

This project was developed as part of a **Mobile Application Development course's first lab task** (mini project). The primary motivation was learning Dart basics using the textbook:

**"Beginning Flutter: A Hands-on Guide to App Development"** by Marco L. Napoli  
*Part I: The Foundations of Flutter Programming*  
*Chapter 3: Learning Dart Basics*

## 🎯 Project Overview

Task Master is a console-based task manager that allows users to:
- Add new tasks with categories
- View all tasks with their status
- Delete tasks by number
- Mark tasks as completed
- Exit the application

## 🔧 Dart Concepts Demonstrated

This project showcases the following Dart fundamentals:

### Core Language Features
- **Variables**: `String`, `double`, `bool`, `int`, `var`
- **Collections**: `List<Task>` for storing tasks
- **Control Flow**: `for` loops, `switch` statements, `if-else` conditions
- **Functions**: Modular code organization with separate functions for each feature
- **Classes**: Custom `Task` class with properties and methods
- **Constructor**: Named and optional parameters
- **Method Overriding**: Custom `toString()` implementation

### Advanced Features
- **Null Safety**: Proper handling with `String?` and null-aware operators
- **String Interpolation**: Dynamic string construction
- **Unicode Support**: Emoji integration (`\u263A`)
- **Input/Output**: Console interaction using `stdin` and `stdout`
- **Error Handling**: Input validation and edge case management

## 🚀 How to Run

### Prerequisites
- Dart SDK installed on your system
- Basic command-line knowledge

### Installation & Execution
1. Clone or download the project files
2. Navigate to the project directory
3. Run the application:
```bash
dart run task_manager.dart
```

## 📋 Usage Guide

### Menu Options
1. **Add Task**: Create a new task with optional category
2. **View Tasks**: Display all tasks with their status and categories
3. **Delete Tasks**: Remove a task by selecting its number
4. **Mark Task as Done**: Mark a specific task as completed
5. **Exit**: Close the application

### Sample Interaction
```
Welcome to Task Master 1.0 ☺

---Task Master Menu---
1. Add Task.
2. View Tasks.
3. Delete Tasks.
4. Mark Task as Done
5. Exit.
Enter your choice: 1

Enter task name: Learn Dart Basics
Enter task category: Programming
Task 'Learn Dart Basics' added successfully under category 'Programming'.
```

## 📁 Code Structure

```
task_manager.dart
├── Task Class
│   ├── Properties (title, category, isDone)
│   ├── Constructor with optional parameters
│   └── toString() method override
├── Global Variables
│   └── tasks List<Task>
├── Main Function
│   └── Application loop and menu handling
└── Helper Functions
    ├── menu() - Display options and get user input
    ├── addTask() - Create and add new tasks
    ├── viewTask() - Display all tasks
    ├── deleteTask() - Remove tasks by index
    └── markTaskDone() - Update task completion status
```

## 🎓 Learning Outcomes

Through this project, the following Dart concepts were practiced:

- **Object-Oriented Programming**: Creating and using custom classes
- **Memory Management**: Working with collections and object references
- **User Input Handling**: Safe parsing and validation
- **Application Flow Control**: Menu-driven program structure
- **String Manipulation**: Interpolation and formatting
- **Error Prevention**: Null safety and boundary checking

## 🔍 Key Code Highlights

### Task Class with Optional Parameters
```dart
class Task{
  String title;
  String category;
  bool isDone;

  Task(this.title, {this.category = "General", this.isDone = false});
}
```

### Safe Input Parsing
```dart
int? index = int.tryParse(input ?? '');
if (index != null && index > 0 && index <= tasks.length) {
  // Safe to proceed
}
```

### Method Overriding for Custom Display
```dart
@override
String toString(){
  return "$title [Category: $category] ${isDone ? '(Done)' : ''}";
}
```

## 🛠 Future Enhancements

Potential improvements for further learning:
- File persistence (save/load tasks)
- Task prioritization system
- Due date functionality
- Search and filter capabilities
- Task editing features
- Better error handling and user feedback

## 👨‍💻 Author

**Jaffar-Kazmi**  
*Mobile Application Development Course*

## 📖 Reference

Based on learning materials from:
- "Beginning Flutter: A Hands-on Guide to App Development" by Marco L. Napoli
- Chapter 3: Learning Dart Basics

---

*This project serves as a foundation for understanding Dart programming concepts before advancing to Flutter mobile app development.*
