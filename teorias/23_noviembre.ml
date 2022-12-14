let rec leaves = funvtion 
   E->[]
  | N (x, E, E) -> [x]
  | N (_,lb, rb) -> leaves lb @ leaves rb
;;
  
  

type  'a sttree = 
  Leaf of 'a
 |Node of 'a * 'a sttree * 'a sttree
;;

let l x = Leaf x;;

let rec mirror = function 
  Leaf x -> Leaf x
 |Node(x, lb, rb) -> Node(x, mirror rb, mirror lb9
;;


(*'a btree -> 'a sttree*)

let rec st_of_b = function
  E -> raise(Invalid_argument"st_of_b")
 |N (x, E ,E) -> Leaf x
 |N (x, lb, rb) -> Node(x, st_of_b lb, st_of_b rb)
;;

(*'a sttree -> 'a btree*)

let rec b_of_st = function
  Leaf x -> N(x,E,E)
 |Node (x,lb,rb) -> N (x, b_of_st lb, b_of_st rb)
;;




type 'a gtree =
  Gt of 'a *'a gtree list
;;


let g6 = Gt (6, [l 5; l 11];;
let g7 = 
let g9 = 
let g5 = 
let gt = 


let recnum_nodes = function 
  Gt (_, []) -> 1
 |Gt (x,h::t)-> num_nodes h + num_nodes (Gt,(x,t))
;;

(* 'a gtree -> int *)


let recnum_nodes = function 
  Gt (_, l) ->  List.fold_left (+) 1 (List.map num_nodes l)
;;
