void main() {
  // if-else statement
  int age = 121;
  bool vote = votefunction(age);
  String vote2 = votepalabra(age);
  print(vote);
  print(vote2);
}

bool votefunction(int age) {
  if (age >= 18 && age <= 120) {
    return true;
  } else if (age > 100) {
    return false;
  } else {
    return false;
  }
}

String votepalabra(int name) {
  if (name >= 18) {
    return "puede votar";
  } else {
    return "no puede votar";
  }
}
