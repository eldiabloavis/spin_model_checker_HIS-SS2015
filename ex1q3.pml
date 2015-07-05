#define N 10
active proctype P() {
  int array[N];
  byte i = 1;
  int product = 1;
  /*added */
  
  
  for(i : 0..9){
    if
	::array[i]=1;
	::array[i]=2;
	::array[i]=3;
	::array[i]=4;
	::array[i]=5;
	::array[i]=6;
	::array[i]=7;
	::array[i]=8;
	::array[i]=9;
	::array[i]=10;

      
      fi;
      product = product * array[i];
  }
  printf("The product is: %d\n", product)
}
