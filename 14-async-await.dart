// Default entrance method executed by all .dart files
void main() async {
	print('Estamos a punto de pedir datos');
  
  //An alternative when you have got async calls, is to change the next code into then; to be executed when it spends the time
// httpGet('https://api.nasa.com/aliens').then( (data) {
    
//     print( data );
//     print('Ultima línea');  
//   });

  //We get an error because httpGet returns Future<String>
  // String data = httpGet('https://api.nasa.com/aliens');

  String data = await httpGet('https://api.nasa.com/aliens');
  
  print( data );
  
  print('Ultima línea');
}

Future<String> httpGet(String url) {
  return Future.delayed( new Duration( seconds: 4 ), () {
    return 'Hola Mundo';
  });
  
}

//It's not allowed creating async constructors
// class Heroe {
//   Heroe() async {

//   }
// }
