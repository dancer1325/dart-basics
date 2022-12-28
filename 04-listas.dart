// Default entrance method executed by all .dart files
void main() {
  
  //Create dynamic list without type specified
  List dynamicList = [1,2,3,4,5];
  dynamicList.add("Hi Alfredo");    // Another type of data can be added
  print('dynamicList $dynamicList');

  //Once specified the type of list, it's not possible to add another type of data
  List<int> numbers = [1,2,3,4,5];
  print( "numbers $numbers" );
  //numbers.add("Hello Alfredo");  --> Error in code time

  // If you don't fix the size --> You can add more elements
  numbers.add(6);
  print( "numbers $numbers" );
  
  // Fix size
  // 1) Problems with default_list_constructor when the null safety is enabled
  // https://dart.dev/tools/diagnostic-messages?utm_source=dartdev&utm_medium=redir&utm_id=diagcode&utm_content=default_list_constructor#default_list_constructor
  // 1.1] Without using new keyword
  // List moreNumbers = List(10);
  // 1.2] Using new keyword
  //  List anotherWay = new List(10);

  // 2) Giving an initial value
  List list = List.filled(3, 2);    // All elements will be the same
  print( "list $list" );

  // An error in run time is got if we try to add another element
  // list.add(2);

  // Possible to modify the value of an element
  list[0] = 1;
  print( "list $list" );

  // List<List<....>>
  List<int> numberList = List.filled(2, 2);
  List<List<int>> listOfList = List.filled(2, numberList);
  print("numberList $numberList");
  print("listOfList $listOfList");
}