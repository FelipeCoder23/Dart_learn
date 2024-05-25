void main() {}

String printDay(int n) {
  String day = "";
  switch (n) {
    case 1:
      day = "Monday";
      break;
    case 2:
      day = "Tuesday";
      break;
    case 3:
      day = "Wednesday";
      break;
    default:
      day = "Invalid day";
      break; // Aunque no es necesario en 'default', es una buena práctica incluirlo.
  }
  return day;
}
// Switch statement es parecido a if-else statement, pero más limpio y fácil de leer.
// En el ejemplo anterior, la función printDay() toma un número entero y devuelve el día de la semana correspondiente.
// el break lo que hace es salir del switch statement, si no se incluye, el código continuará ejecutándose.
// el continue lo que hace es saltar a la siguiente iteración del loop, si no se incluye, el código continuará ejecutándose.
