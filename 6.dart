void main() {
  Map<String, dynamic> person = {
    "name": "Minh",
    "address": "383 Lach Tray Str",
    "age": 21,
    "country": "China"
  };
  person["country"] = "Vietnam";
  for (String key in person.keys) {
    print("$key: ${person[key]}");
  }
}
