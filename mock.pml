mtype {request, reply}

chan internet = [20] of {mtype,int}

chan serverChan1 = [5] of {mtype,int}
chan serverChan2 = [5] of {mtype,int}

active [4]proctype client() {

  mtype x;
  int id;
  do
    ::internet ! request,_pid;
      printf("\nClient %d sent req",_pid);
      do
      ::internet ? x,id;
	  if
	  :: x==reply && id == _pid -> break;
	  ::else-> internet ! x,id;
	  fi
      od;
      printf("\nClient %d received response",_pid);
	   
	    
      
  od

}

active [2]proctype proxy() {

mtype x;
  int id;
  do
     ::internet ? x,id;
	if
	::x==request-> if
			::serverChan1 ! x,id;printf("\nReq from Client %d sent to Server 1",id);
			::serverChan2 ! x,id;printf("\nReq from Client %d sent to Server 2",id);
			fi
	::else-> internet ! x,id;
	fi;
		 
  od

}

proctype server(chan channel) {
  mtype x;
  int id;
  do
    ::channel ? x,id; internet ! reply,id;
  od
}

init{
run server(serverChan1);
run server(serverChan2)
}
