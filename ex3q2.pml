int level = 0;
bool request = false;
bool inflowOn = false;
bool outflowOn = false;
active proctype user(){
  do
  ::request = true;
    do
    ::!request-> break;
    od
  ::skip;
  od
}

active proctype sensor(){
  do
    ::level <= 40 -> atomic{inflowOn = true; outflowOn = false;
      printf("\n Inflow on level: %d",level);}
    ::level >= 60 -> atomic{inflowOn = false; outflowOn = true;
      printf("\n Inflow off level: %d",level);}
  od
}

active proctype inflow(){
  do
    ::inflowOn -> level++;
    ::else -> skip;
      
  od
}

active proctype outflow(){
  do
    ::outflowOn && request -> 
    atomic{
	  level--;request = false;
	  }
    ::else -> skip;
      
  od
}