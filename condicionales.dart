void main() {
  // if-else statement
  int age = 121;
  bool vote = votefunction(age);
  String vote2 = votepalabra(age);
  String vote3 = votefunctionresume(age);
  print(vote);
  print(vote2);
  print(vote3);
}

/// estas son funciones que retornan un valor booleano y un string
/// la funcion votefunction recibe un parametro de tipo int y retorna un valor booleano
/// y dentro de estta funcion usamos los condicionales if-else
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

/// esta funcion es un poco mas resumida que la anterior y usa ? y : para simplificar el codigo
String votefunctionresume(int age) {
  String result = age >= 18 && age <= 100
      ? "puede votar"
      : age > 100
          ? "estas seguro que estas vivo ?"
          : age < -1
              ? "no has nacido"
              : "no puede votar";
  return result;
}
