
void main() {
  List<String> list = ["Bread", "Milk", "Eggs"];

  list.add("Cheese");
  list.insert(1, "Apple");
  list.removeAt(2);
  list[0] = "Butter";

  print("Arajin: ${list.first}");
  print("Erkrord: ${list.last}");
  print("Datark e? ${list.isEmpty}");
  print("List: $list");
}
