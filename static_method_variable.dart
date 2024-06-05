// metodo estatico
// sirve para que un metodo pertenezca a la clase y no a un objeto
// por ej si se tiene una clase Calculator y se quiere sumar dos numeros
// se puede hacer un metodo estatico que pertenezca a la clase y no a un objeto
class Calculator {
  static int addTwoNumbers(int a, int b) {
    return a + b;
  }
}

void main() {
  int result = Calculator.addTwoNumbers(5, 3);
  print(result); // Imprime 8
}
