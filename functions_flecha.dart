// utilizacion de la flecha => para simplificar el codigo

void main() {
  findPerimeter(4, 2);

  int rectArea = getArea(10, 5);
  print("The area is $rectArea");
}

// esta funcion calcula el perimetro de un rectangulo y usa la flecha => para imprimir
// esto simplifica el codigo y lo hace mas facil de leer
void findPerimeter(int length, int breadth) =>
    print("The perimeter is ${2 * (length + breadth)}");

int getArea(int length, int breadth) => length * breadth;
