// Default entrance method executed by all .dart files
void main() {
  
  
  bool activado = true;
  print(activado);
  
  
  if ( !activado ) {
    print('El motor esta funcionando');
  } else {
    print('Está apagado');
  }
  
  
  // Same part of the code, but without sense since the variable is a boolean
  if ( activado == true ) {
    print('El motor esta funcionando');
  } 
  
}