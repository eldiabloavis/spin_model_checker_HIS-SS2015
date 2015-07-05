chan helloch = [0] of {byte};
chan worldch = [0] of {byte};
active proctype send()
{
  helloch ! 0;
  worldch ! 0;
}
int var;
active proctype hello()
{
  
   helloch ? var -> printf("Hello");
  
}
active proctype world()
{
  
   worldch ? var -> printf("World\ns");
  
}
