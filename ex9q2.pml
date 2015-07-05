byte mode = 1;
byte count = 0;
active proctype m() {
  endLoop:
    if
      :: mode = 1
      :: mode = 2
    fi;
    do
      :: mode == 1 && count < 29 -> count++ /* count < 30 condtion will lead to violation of property1*/
      :: mode == 2 -> count = 0;
		      goto endLoop
      :: mode == 3 -> break
      :: else -> goto endLoop
    od;
    count = 0
}

active proctype n() {
  do
    :: mode = 3
  od;
}
ltl property1 {[] (count < 30)}
ltl property2 {[]((count>0)->(count>0)U(mode>1))}
ltl property3 {[]((count>0)-> <>(count==0)) }
ltl property4 {<> (mode==3)}
