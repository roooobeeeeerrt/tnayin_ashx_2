List<int> findPair(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) { return [i, j]; }
    }
  }

  return [];
}

void main() {
  print(findPair([2, 5, 7, 11], 9));
  print(findPair([1, 2, 3, 5], 10));
}