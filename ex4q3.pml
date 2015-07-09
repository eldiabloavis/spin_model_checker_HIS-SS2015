chan channel12 = [1] of {int,bool};
chan channel23 = [1] of {int,bool};
chan channel34 = [1] of {int,bool};
chan channel45 = [1] of {int,bool};
chan channel51 = [1] of {int,bool};

bool elected = false;


active proctype process1()
{
 bool elect;
 int ident = 6;
  bool act_flag= true;
  int d,e,f,max;
   d= ident;
  do
  ::if
      :: act_flag&& ! elected -> 
	  printf("Process %d active\n",ident);
	  channel12 ! d,elected;
	  channel51 ? e,elect;
	  if
	    ::e==ident->  elected=true; channel12 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	  fi;
	  if
	    ::d>e -> channel12 ! d;
	    ::else -> channel12 ! e;
	  fi;
	  channel51 ? f;
	  if
	    ::f==ident -> elected=true;channel12 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	   fi;
	    //max(d,f)
	  if
	    ::d>f -> max = d;
	    ::else -> max = f;
	  fi;

	  if
	    :: e>= max -> d=e;
	    :: else -> act_flag= false;
	  fi;
	:: !act_flag&& ! elected->
	    channel51 ? d;
	    if
	      :: d == ident -> elected=true;channel12 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	    fi;
	    channel12 ! d;

	:: else ->
	    channel12 ! max,true;//break;
      fi;
    od;
}
active proctype process2()
{
  int ident = 2;
  bool act_flag= true;bool elect;
  int d,e,f,max;
   d= ident;
  do
  ::if
      :: act_flag&& ! elected -> 
	  printf("Process %d active\n",ident);
	  channel23 ! d,elected;
	  channel12 ? e,elect;
	  if
	    ::e==ident->  elected=true; channel23 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	  fi;
	  if
	    ::d>e -> channel23 ! d;
	    ::else -> channel23 ! e;
	  fi;
	  channel12 ? f;
	  if
	    ::f==ident -> elected=true;channel23 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	   fi;
	    //max(d,f)
	  if
	    ::d>f -> max = d;
	    ::else -> max = f;
	  fi;

	  if
	    :: e>= max -> d=e;
	    :: else -> act_flag= false;
	  fi;
	:: !act_flag&& ! elected->
	    channel12 ? d;
	    if
	      :: d == ident -> elected=true;channel23 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	    fi;
	    channel23 ! d;

	:: else ->
	    channel23 ! max,true;//break;
      fi;
    od;
}
active proctype process3()
{
  int ident = 3;
  bool act_flag= true;bool elect;
  int d,e,f,max;
   d= ident;
  do
  ::if
      :: act_flag&& ! elected -> 
	  printf("Process %d active\n",ident);
	  channel34 ! d,elected;
	  channel23 ? e,elect;
	  if
	    ::e==ident->   elected=true;channel34 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	  fi;
	  if
	    ::d>e -> channel34 ! d;
	    ::else -> channel34 ! e;
	  fi;
	  channel23 ? f;
	  if
	    ::f==ident -> elected=true;channel34 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	   fi;
	    //max(d,f)
	  if
	    ::d>f -> max = d;
	    ::else -> max = f;
	  fi;

	  if
	    :: e>= max -> d=e;
	    :: else -> act_flag= false;
	  fi;
	:: !act_flag&& ! elected->
	    channel23 ? d;
	    if
	      :: d == ident -> elected=true;channel34 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	    fi;
	    channel34 ! d;

	:: else ->
	    channel34 ! max,true;//break;
      fi;
    od;
}
active proctype process4()
{
  int ident = 4;
  bool act_flag= true;bool elect;
  int d,e,f,max;
   d= ident;
  do
  ::if
      :: act_flag&& ! elected -> 
	  printf("Process %d active\n",ident);
	  channel45 ! d,elected;
	  channel34 ? e,elect;
	  if
	    ::e==ident->   elected=true;channel12 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	  fi;
	  if
	    ::d>e -> channel45 ! d;
	    ::else -> channel45 ! e;
	  fi;
	  channel34 ? f;
	  if
	    ::f==ident -> elected=true;channel45 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	   fi;
	    //max(d,f)
	  if
	    ::d>f -> max = d;
	    ::else -> max = f;
	  fi;

	  if
	    :: e>= max -> d=e;
	    :: else -> act_flag= false;
	  fi;
	:: !act_flag&& ! elected->
	    channel34 ? d;
	    if
	      :: d == ident -> elected=true;channel45 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	    fi;
	    channel45 ! d;

	:: else ->
	    channel45 ! max,true;//break;
      fi;
    od;
}
active proctype process5()
{
  int ident = 5;
  bool act_flag= true;bool elect;
  int d,e,f,max;
   d= ident;
  do
  ::if
      :: act_flag&& ! elected -> 
	  printf("Process %d active\n",ident);
	  channel51 ! d,elected;
	  channel45 ? e,elect;
	  if
	    ::e==ident->   elected=true;channel51 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	  fi;
	  if
	    ::d>e -> channel51 ! d;
	    ::else -> channel51 ! e;
	  fi;
	  channel45 ? f;
	  if
	    ::f==ident -> elected=true;channel51 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	   fi;
	    //max(d,f)
	  if
	    ::d>f -> max = d;
	    ::else -> max = f;
	  fi;

	  if
	    :: e>= max -> d=e;
	    :: else -> act_flag= false;
	  fi;
	:: !act_flag&& ! elected->
	    channel45 ? d;
	    if
	      :: d == ident -> elected=true;channel51 ! ident,true;printf("Leader elected: %d",ident);//announce
	      ::else -> skip;
	    fi;
	    channel51 ! d;

	:: else ->
	    channel51 ! max,true;//break;
      fi;
    od;
}
