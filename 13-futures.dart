// Default entrance ddmethod executed by all .dart files
void main() {
  
	print('Estamos a punto de pedir datos');
  
  //Allows using the resolution of the Future
  httpGet('https://api.nasa.com/aliens').then( (data) {
    print( "data $data" );
  });
  
  //The execution continues, without waiting for the another response
  print('Ultima línea');
}

//If we don't specify the type, it will be dynamic
// Future httpGet(String url) {
  
//   return Future.delayed( new Duration( seconds: 4 ), () {
//     return 'Hola Mundo';
//   });
  
// }

Future<String> httpGet(String url) {
  return Future.delayed( new Duration( seconds: 4 ), () {
    return 'Hola Mundo';
  });
}
