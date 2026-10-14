Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
  return "Task $name completed";
}

Future<List<String>> runTasks() async {
  var taskA = runTask("A", 100);
  var taskB = runTask("B", 50);
  var taskC = runTask("C", 150);

  return [
    await taskA,
    await taskB,
    await taskC,
  ];
}

void main() async {
  print(await runTasks());
}