void main() {
    // Elementos:    N   N   N   N   N
    // Indexs:       0   1   2   3   4

    List<int?> numbersList = List.filled(5, null, growable: false);  // con esto se crea la lista y se fija
    // el tamaño de la lista en 5 y se inicializa en null el growable es para que no se pueda modificar el tamaño de la lista

    numbersList[0] = 73;  // Inserta operación
    numbersList[1] = 64;
    numbersList[3] = 21;
    numbersList[4] = 12;

    numbersList[0] = 99;  // actualiza la  operation
    numbersList[1] = null;//  elimina la  operation o se pone null mejor dicho

    print(numbersList[0]);
    print("\n");

    // Las siguientes operaciones no son soportadas en listas de longitud fija:
    // numbersList.remove(73);                 // No soportado en listas de longitud fija
    // numbersList.add(24);                    // No soportado en listas de longitud fija
    // numbersList.removeAt(3);                // No soportado en listas de longitud fija
    // numbersList.clear();                    // No soportado en listas de longitud fija

  // iteracion de la lista
  // usando for
    for (int element in numbersList) {
        print(element);

    print("\n");
  // usando forEach o lamda
    numbersList.forEach((element) => print(element));

    print("\n");
  // usando index
    for (int i = 0; i < numbersList.length; i++) {
        print(numbersList[i]);
    }
}
