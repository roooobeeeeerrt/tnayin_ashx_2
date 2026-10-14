Future<int> getNumber(int value) async {
  if (value <= 0) {
    throw Exception("Bacasakan e");
  }

  await Future.delayed(Duration(seconds: 1));
  return value;
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}

void main() async {
  print(await safeGetNumber(2));
  print(await safeGetNumber(-4));
}