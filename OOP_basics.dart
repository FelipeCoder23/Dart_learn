// encapsulamiento
// Esto se usa para proteger los datos de la clase de ser accedidos directamente desde fuera de la clase.
// En Dart, se puede lograr esto usando guiones bajos (_) antes del nombre de la variable o método.
// para poder modificar balance se debe usar un método de la clase Account
// no se puede re asignar el valor de balance directamente como account._balance = 1000;
class Account {
  double _balance =
      0.0; // saldo privado que no puede ser accedido directamente fuera de la clase

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposit successful. Balance is now $_balance");
    }
  }

  double getBalance() {
    return _balance; // Método para obtener el saldo
  }
}

void main() {
  var myAccount = Account();
  myAccount.deposit(100);
  print(myAccount.getBalance());
}

// metodos de clase
// Los métodos de clase son métodos que se pueden llamar en la clase sin tener que instanciar la clase.
// Se definen con la palabra clave static.
class Lamp {
  bool isOn = false;

  void turnOn() {
    isOn = true;
    print("Lamp is on");
  }

  void turnOff() {
    isOn = false;
    print("Lamp is off");
  }
}

void main() {
  var myLamp = Lamp();
  myLamp.turnOn();
  myLamp.turnOff();
}

// en este ej de metodos de clase se puede llamar a la clase sin instanciarla

// HERENCIA
// La herencia es un concepto en el que una clase (subclase) hereda propiedades y métodos de otra clase (superclase).
// En Dart, una clase puede heredar de otra clase usando la palabra clave extends.

class Animal {
  void speak() {
    print("The animal makes a sound");
  }
}

class Dog extends Animal {
  @override // el override es opcional, pero es una buena práctica usarlo para evitar errores
  // si el método de la clase base cambia y el método de la clase derivada no se actualiza

  void speak() {
    print("The dog barks");
  }
}

void main() {
  var myDog = Dog();
  myDog.speak(); // Outputs: The dog barks
}

// polimmorfismo
// Polymorphism es un concepto en el que una clase puede tener múltiples formas.
// usando la herencia anterior se puede hacer polimorfismo
// en este caso se puede llamar a la funcion speak de la clase animal y de la clase dog
// haciendo que speak se puede comportar de diferentes maneras dependiendo del objeto que se le pase

void makeItSpeak(Animal animal) {
  animal.speak(); // El comportamiento específico depende del tipo de objeto.
}

void main() {
  Animal myAnimal = Animal(); // aqui creo un objetico tipo animal

  Dog myDog =
      Dog(); // aqui creo un objeto tipo dog que es una subclase de animal

  makeItSpeak(myAnimal); // Outputs: The animal makes a sound
  makeItSpeak(myDog); // Outputs: The dog barks
}
// el polimorfismo es poderoso porque permite escribir codido flexible y facil de extender
// por lo tanto esto permite llamar a una funcion tano de la clase padre como de la clase hija
// cada una con su propia implementacion

// abtraccion
// esta  no se puede instanciar, solo se puede usar como una plantilla para otras clases
// se usa la palabra clave abstract

abstract class Shape {
  double area(); // Método abstracto este olbiga a todas las clases
  // que heredan de Shape a implementar el método area
}

// por ej si se crea una clase Circle que hereda de Shape, se debe implementar el método area
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

// lo mismo para la clase Square
class Square extends Shape {
  double side;

  Square(this.side); // este es el constructor de la clase Square sirve
  //para inicializar la variable side
  // esta escrito de una forma resumida
  // porque si no seria asi
  // Square(double side) {
  //   this.side = side;
  // }

  @override
  double area() {
    return side * side;
  }
}

void main() {
  var circle = Circle(5);
  var square = Square(4);

  print(circle.area()); // Outputs: 78.53975
  print(square.area()); // Outputs: 16
}

// esto permite gestionar la complejidad al concentrar en lo que debe ahjcer una clase
//y no en como lo hace
