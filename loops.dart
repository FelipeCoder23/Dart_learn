void main() {
  // For loop
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  // While loop
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  // Do-While loop
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);

  // For-in loop
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // For-each loop
  numbers.forEach((number) => print(number));

  // Break statement
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      break;
    }
    print(i);
  }

  // Continue statement
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }
    print(i);
  }
}
