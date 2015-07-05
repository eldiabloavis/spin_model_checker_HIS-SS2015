
byte flag = 0;
byte count = 0;
bool end = false
active proctype P() {
  if
    :: flag = 1
    :: flag = 2
  fi;
  if
    :: flag == 1 ->
      do
	:: (count == 0) -> break
	:: count++
	:: count--
      od
    :: else ->
      do
	:: (count == 0) -> break
	:: (count != 0) ->
	  if
	    :: count++
	    :: count--
	  fi
      od
  fi;
  end = true
}
