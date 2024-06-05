// Mapas
// son los diccionarios de python en dart
// --> La CLAVE debe ser única
// --> El VALOR puede ser duplicado

void main() {
  // Método 1: Uso de Literal
  const Map<String, int> countryDialingCode = {
    "USA": 1,
    "INDIA": 91,
    "PAKISTAN": 92
  };

  // Método 2: Uso de Constructor
  Map<String, String> fruits = Map();
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"] = "green";

  // Devuelve true si la CLAVE está presente en el Mapa
  fruits.containsKey("apple");
  // Actualiza el VALOR para la CLAVE dada
  fruits.update("apple", (value) => "green");
  // Elimina la CLAVE y su VALOR y devuelve el VALOR
  fruits.remove("apple");
  // Devuelve true si el Mapa está vacío
  fruits.isEmpty;
  // Devuelve el número de elementos en el Mapa
  fruits.length;
  // Elimina todos los elementos
  // fruits.clear();

  // Imprime el valor asociado a la clave "apple"
  print(fruits["apple"]);

  print("\n");

  // Imprime todas las claves
  for (String key in fruits.keys) {
    print(key);
  }

  print("\n");

  // Imprime todos los valores
  for (String value in fruits.values) {
    print(value);
  }
  print("\n");

  // Uso de Lambda para imprimir clave y valor
  fruits.forEach((key, value) => print("key: $key and value: $value"));
}
