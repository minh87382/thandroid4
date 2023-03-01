import 'dart:io';

void main() {
  List<String> friends = [];
  for (int i = 0; i < 7; i++) {
    print("Điền tên của người thứ ${i + 1}:");
    String name = stdin.readLineSync()!.trim();
    friends.add(name);
  }
  String aName =
      friends.where((name) => name.toLowerCase().startsWith('a')).first;
  print("Tên bắt đầu bằng chữ'a': $aName");
}
