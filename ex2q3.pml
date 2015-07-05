bool b1 = false;
bool b2 = false;
int x;


active proctype P1(){
mtype n = 1;
  do
    ::printf("Non critical P%d\n",n);
     
     b1 = true;
     x=2; 
      printf("Wait P%d\n",n);
      do
	::(b2==false)||(x==1)->break;
      od;
      printf("Critical P%d\n",n);
      b1=false;
  od;
}

active proctype P2(){
mtype n = 2;
  do
    ::printf("Non critical P%d\n",n);
      
      b2 = true;
      x=1;
      printf("Wait P%d\n",n);
      do
	::(b1==false)||(x==2)->break;
      od;
      printf("Critical P%d\n",n);
      b2=false;
  od;
}