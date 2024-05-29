// Objetivo aprender sobre los parametros de dart

void main() {
  printCities("New York", "New Delhi", "Sydney");
  print("");

  printCountries("USA");

  findVolume(10, height: 20, breadth: 5);
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

// ahora para el uso de {} este se usa para darle un valor por defecto a los parametros
// tbn para llamar al funcion con el orden de los parametros que queramos no importa el orden
// importarte que tbn se peude asignar valores predeterminados a los parametros en este caso son 1
int findVolume(int length, {int breadth = 1, int height = 1}) {
  print("Length is $length");
  print("Breadth is $breadth");
  print("Height is $height");

  print("Volume is ${length * breadth * height}");
  return length * breadth * height;
}
