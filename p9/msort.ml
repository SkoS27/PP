
let rec divide l = match l with
    h1::h2::t -> let t1, t2 = divide t in (h1::t1, h2::t2)
  | _ -> l, [];;

 let rec merge = function
     [], l | l, [] -> l
   | h1::t1, h2::t2 -> if h1 <= h2 then h1 :: merge (t1, h2::t2)
                       else h2 :: merge (h1::t1, t2);; 

 let rec msort1 l = match l with
     [] | _::[] -> l
   | _ -> let l1, l2 = divide l in
         merge (msort1 l1, msort1 l2);; 




let divide' l =
  let rec aux dvd1 dvd2 = function
      [] -> (List.rev dvd1, List.rev dvd2)
    | h::[] -> (List.rev (h::dvd1), List.rev dvd2)
    | h1::h2::t -> aux (h1::dvd1) (h2::dvd2) t
  in aux [] [] l;;

let merge' ord (l1, l2) =
  let rec aux (a1, a2) mer = match a1, a2 with
      [], l | l, [] -> List.rev_append mer l
    | h1::t1, h2::t2 -> if ord h1 h2 then aux (t1, h2::t2) (h1::mer)
                        else aux (h1::t1, t2) (h2::mer)
  in aux (l1, l2) [];;

let rec msort2 ord l = match l with
    [] | _::[] -> l
  | _ -> let l1, l2 = divide' l
         in merge' ord (msort2 ord l1, msort2 ord l2);;


(* Puede ocurrir Stack Overflow con msort1 con numeros muy grandes,por ejemplo con el l2 que se detalla a continuacion*)

let l2  = List.init 500000 (function x -> Random.int 1000);;

(* el algoritmo de ordenacion msort1  presenta stack overflow con datos de gran tamaño, por ejemplo, la lista con 500.000 elementos. En cambio,msort2 los ordena sin aparente problema alguno, pero el qsort2 presenta un tiempo de ejecución practicamente el doble de lento que msort2*)
