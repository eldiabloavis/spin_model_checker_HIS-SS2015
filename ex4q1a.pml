chan sendch = [0] of {int};
active proctype send()
{
  do
  ::sendch ! 0;
  ::sendch ! 1;
  ::sendch ! 2;
  ::sendch ! 3;
  ::sendch ! 4;
  ::sendch ! 5;
  ::sendch ! 6;
  ::sendch ! 7;
  ::sendch ! 8;
  ::sendch ! 9;
  od
}
int var;
active proctype receiver()
{
  do
  :: sendch ? var -> printf("Received %d/n", var);
  od
}

