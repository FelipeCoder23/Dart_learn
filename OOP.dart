class Vehicle {
  // Propiedad privada, ejemplo de encapsulamiento.
  String _vehicleType;

  Vehicle(this._vehicleType);

  // Método que puede ser sobreescrito por clases herederas.
  void displayInfo() {
    print("This is a $_vehicleType.");
  }
}

// Clase Car hereda de Vehicle, demostrando herencia.
class Car extends Vehicle {
  String? brand;
  String? color;
  int? year;

  // Constructor de Car, llamando al constructor de la clase base Vehicle.
  Car(String vehicleType, this.brand, this.color, this.year)
      : super(vehicleType);

  // Sobreescritura de un método de la clase base para mostrar más detalles, ejemplo de polimorfismo.
  @override
  void displayInfo() {
    super.displayInfo(); // Llama al método de la clase base.
    print("Brand: $brand, Color: $color, Year: $year");
  }
}

void main() {
  var car1 = Car("Car", "Tesla", "Red", 2017);
  var car2 = Car("Car", "Honda", "Green", 2023);
  var car3 = Car("Car", "Kia", "Grey", 2019);

  car1.displayInfo();
  car2.displayInfo();
  car3.displayInfo();
}
