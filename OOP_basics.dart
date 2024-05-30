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
