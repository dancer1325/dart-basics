void main() {
  
  //To create dynamic list without type specified
  List dynamicList = [1,2,3,4,5];
  dynamicList.add("Hola Alfredo");
  print(dynamicList);

  List<int> numeros = [1,2,3,4,5];
  print( numeros );

  //Once specified the type of list, it's not possible to add another type of data
  //numeros.add("Hola Alfredo");
  
  numeros.add(6);
  print( numeros );
  
  
  // Tamaño fijo
  List masNumeros = List(10);
  //Another way to initialize a List is with the variable new
  //List anotherWay = new List(10);
  print( masNumeros );
//   masNumeros.add(1); Esto no es correcto, since we have specified the size
  masNumeros[0] = 1;
  print( masNumeros );
  
}