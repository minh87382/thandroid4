void main() {
  Map<String, String> contacts = {
    "Long": "123-4567",
    "Minh": "555-1212",
    "Vu": "987-6543"
  };
  Iterable<String> keysWithLength4 =
      contacts.keys.where((key) => key.length == 4);
  print("Những tên có 4 ký tự:");
  for (String key in keysWithLength4) {
    print(key);
  }
}
