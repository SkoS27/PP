let fact n =
  let rec aux resultado= function
  0 -> resultado
 |i -> aux (i*resultado) (i-1)
 in
  function n -> aux 1 n;;
  
  
let fact n =
  let rec aux (i, fi)=
  if i = n then fi
  else aux (i+1, (i+1)*fi)
 in 
 aux (0, 1)
 ;;
 
 
let fib n =
  let rec aux i fi fa =
    if i = n then fi
    else aux (i+1) (fi+fa) fi
  in
    aux 0 0 1
  ;;
  
  
let rec lmax = function
  h::[] -> h
 |h::t -> max h (lmax t);;
(*NO TERMINAL*)

let lmax (h::t)=
  let rec aux m = function
      [] -> m
     | h'::t' -> aux (max m h') t' 
  in 
    aux h t
  ;;
(*FUNCION AUXILIAR*)
  
let rec lmax = function
    [] -> raise(Failure "lmax")
    h:: [] -> h
   |h1::h2::t -> lmax (max h1 h2 :: t);;
   
(*FUNCION TERMINAL*)
