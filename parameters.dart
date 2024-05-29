// Objetivo aprender sobre los parametros de dart

void main() {
  printCities("New York", "New Delhi", "Sydney");
  print("");

  printCountries("USA"); // You can skip the Optional Positional Parameters
}

// En esta funcion si queremos llamarla debemos darle todos los parametros en este caso son 3
void printCities(String name1, String name2, String name3) {
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");
}

// en cambio para esta funcion al utilizar los [] podemos omitir los parametros y con ? podemos hacer que sean nulos
// cuando se usan los [] si no se especifica el parametro devuelve null
// en ? indica el parametro puede ser nulo
void printCountries(String name1, [String? name2, String? name3]) {
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");
}
