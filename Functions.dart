// las funciones funcionan de la siguiente manera en dart
// asi se def funciones en este caso main seria el nombre y void es lo que retorna
// void es un tipo de dato que no retorna nada
void main() {
  // para llammar a la clase Akshit se debe instanciar
  Akshit akshit = new Akshit();
// puedo llamar al  funcion que se encuentra abajo de esta funcion
  print(hunderedMultiple(2));
  // ahora llamareala funcion stringPlusHello
  print(stringPlusHello("World"));
  // ahora llamareala funcion hunderedMultiple2 de la clase Akshit
  print(akshit.hunderedMultiple2(2));
  // ahora llamareala funcion stringPlusHello de la clase Akshit
  print(Akshit.stringPlusHello("World"));

  String name = "Akshit";
  print(name.toLowerCase());
  // al final el string name igual se considera una funcion y le podemos aplucar metodos
}

// en la sgte funcion se le pasa un parametro de tipo int y retorna un int
int hunderedMultiple(int n) {
  return n * 100;
}

String stringPlusHello(String s) {
  return "Hello " + s;
}

// ahora crearemos una clase
class Akshit {
  int hunderedMultiple2(int n) {
    return n * 200;
  }

  // ahora crearemos una funcion pero ocn static
  // esto sirve para que no se tenga que instanciar la clase
  static String stringPlusHello(String s) {
    return "Hello " + s;
  }
}

// la diferencia entre static y object es que static no necesita ser instanciado
