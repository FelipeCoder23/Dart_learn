
/// void indica que la funcion main no retornara ningun valor
/// main es la funcion que da el inicio a la ejecucion del programa
/// string, bool , int son tipos de datos hay que declarar el tipo de dato siempre
/// List<String> es una lista de strings
/// Map<String, dynamic> es un mapa de datos donde la clave es un string y el valor puede ser de cualquier tipo de dato



void main() {
  String name = "Akshit";
  bool male = true;
  int age = 21;
  List<String> fruits = ["mango", "apple"];
  Map<String, dynamic> myData = {
    "name": name,
    "age": age,
    "male": male,
    "fruits": fruits
  };

  print(myData);
}
