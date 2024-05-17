
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
  /// a las listas con el . se le pueden realizar operaciones
  /// las operaciones mas communes son add, remove, clear

  fruits.add("banana");
  /// la diferencia entre add y addAll es que add solo agrega un elemento a la lista y addAll agrega una lista completa
  /// tbn se pueden ordenar las listas con sort por ejemplo fruits.sort();
  fruits.sort();

  /// otra funcion que se puede realizar es contains que verifica si un elemento esta en la lista
  bool valor = fruits.contains("banana");
  /// el where que se utiliza para filtrar los elementos de la lista
  /// como ejemplo se puede filtrar los elementos que contienen la palabra mango y se almacena en la variable result
  var result = fruits.where((element) => element.contains("mango"));
  /// tbn se le puede aplica al final  .TOlist() para convertir el resultado en una lista
  /// por ej fruits.where((element) => element.contains("mango")).toList();

  /// con || y && se pueden realizar operaciones logicas el ej anterior quedaria asi
  /// fruits.where((element) => element.contains("mango") && element = "apple").toList();
  print(result);
  print(fruits);
  print(myData);
  print(myData["name"]);
  /// se puede acceder a los elementos de un mapa con la clave

  /// esto es para acceder a las claves de un mapa
  print(myData.keys);
}
