Future<int> delayedValue(int value) async {
  await Future.delayed(Duration(seconds: 1));
  return value;
}

Future<int> sumValues(int a, int b) async {
  int x = await delayedValue(a);
  int y = await delayedValue(b);
  return x + y;
}

void main() async {
  print(await sumValues(5, 10));
}