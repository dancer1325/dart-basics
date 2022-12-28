// Default entrance method executed by all .dart files
void main() {

  bool active = true;
  print(active);
  
  if ( !active ) {
    print('The engine is working');
  } else {
    // Next line, to use ' in String --> Use "
    print("It's turned off");
  }
  
  // Same part of the code, but without sense since the variable is a boolean
  if ( active == true ) {
    print('The engine is working');
  } 
  
}