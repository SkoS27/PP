module Counter () :sig 
  val next : unit -> int
  val reset : unit -> unit
end=
struct 
  let n = ref 0
  let next() = n := !n + 1; !n
  let reset () = n := 0
end;;

(*ORIENTADO A OBJETOS*)

let c1 = object 
  val mutable n = 0
  method next = n <- n+1; n
  method reset = n <- 0
end;;

(*c1#next;; c1#unit;;*)

(*Definicion de clase de objeto*)

class counter = object 
  val mutable n = 0
  method next = n <- n+1; n
  method reset = n <- 0
end;;
(*let c3 = new counter*)


class counter_with_set = object 
  inherit counter
  method set v = n <- v
end;;
