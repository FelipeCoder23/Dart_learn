void main() {
  try {
    // Intento de dividir por cero para provocar una excepción
    int result = 12 ~/ 0; // el ~| es para que el resultado sea un entero
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    // on Maneja exceciones  específicas en este caso para la división por cero
    print("Cannot divide by zero.");
  } catch (e) {
    // Captura de cualquier otra excepción no especificada anteriormente en algun on
    print("An exception occurred: $e");
  } finally {
    // Código que se ejecuta siemrpre después de los bloques try y catch, independientemente de si se lanzó una excepción
    print("This is the finally clause, always executed.");
  }
}
