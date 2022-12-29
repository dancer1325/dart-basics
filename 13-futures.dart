// Default entrance method executed by all .dart files
void main() {
  
	print('We are close to ask for data');
  
  //Allows using the resolution of the Future
  httpGet('https://api.nasa.com/aliens').then( (data) {
    print( "data $data" );
  });
  
  //The execution continues, without waiting for the another response
  print('Last sentence');
}

//If we don't specify the type, it will be dynamic
// Future httpGet(String url) {
//   return Future.delayed( new Duration( seconds: 4 ), () {
//     return 'Hello World!';
//   });
// }

Future<String> httpGet(String url) {
  return Future.delayed( new Duration( seconds: 4 ), () {
    return 'Hello World!!';
  });
}
