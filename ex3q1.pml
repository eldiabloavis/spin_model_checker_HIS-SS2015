int z=11;
int y=8;
int x=5;


active proctype P() {
if
  ::y < x -> z = x;
  ::else -> z = y;
fi;
printf("Value of Z in Process P %d\n",z); 
}
 active proctype Q() {
x--; printf("Value of X in Process Q %d\n",x);
}
active proctype R() {
  y = x - y;
printf("Value of y in Process R %d\n",y);
}