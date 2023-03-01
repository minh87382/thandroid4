import 'dart:io';

void main() {
  List<String> tasks = [];
  while (true) {
    print('Bạn muốn gì?');
    print('1. Thên một task');
    print('2. Xóa task');
    print('3. Xem những task của bạn');
    print('4. Thoát');
    String? choice = stdin.readLineSync();
    print('');
    if (choice == '1') {
      addTask(tasks);
    } else if (choice == '2') {
      removeTask(tasks);
    } else if (choice == '3') {
      viewTasks(tasks);
    } else if (choice == '4') {
      break;
    } else {
      print('Chộn lại');
    }

    print('');
  }

  print('Tạm biệt');
}

void addTask(List<String> tasks) {
  print('Enter the task you would like to add:');
  String? task = stdin.readLineSync();
  tasks.add(task!);
  print('Task added!');
}

void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('Không có task để xóa');
    return;
  }
  print('Bạn muốn xóa task nào?');
  for (int i = 0; i < tasks.length; i++) {
    print('${i + 1}. ${tasks[i]}');
  }
  String? choice = stdin.readLineSync();
  int index = int.tryParse(choice!) ?? 0;
  if (index < 1 || index > tasks.length) {
    print('Chọn lại');
  } else {
    tasks.removeAt(index - 1);
    print('Task đã được xóa');
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('Không có task để hiện');
  } else {
    print('Những task của bạn:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}
