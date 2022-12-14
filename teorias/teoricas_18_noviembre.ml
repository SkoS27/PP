type nat=
   Z
 | S of nat
;;

let rec sum n1 = function 
   Z -> n1
  |S n2 -> sum (S n1) n2
;;

let rec nat_of_int = function
  0 -> Z
 |n -> if n <0 then raise (Ivalid_argument "nat_of_int")
       else S (nat_of_int (n-1))
;;


let rec nat_of_int = function
  0 -> Z
 |n -> S (nat_of_int (n-1))
;;


type 'a btree =
    Empty
   |Node of 'a * 'a btree * 'a btree
;;

(*N (2, E, E);;*)

let leaf x = N ( x, Empty,Empty );;


let rec num_nodes = function
  Empty -> 0
 |Node ( _, lb, rb) -> 1 + num_nodes lb + num_nodes rb
;;

let rec heigth = function 
  Empty -> 0
 |Node (_, lb, rb) -> 1 + max(heigth) (lb heigth rb)
;;

let rec preorder = function 
   Empty
  |Node (r, lb, rb) -> (r::preorder lb @ preorder rb)
;;

let rec inorder = function 
   Empty
  |Node (r, lb, rb) -> (r::preorder lb @ preorder rb)
;;

let rec postorder = function 
   Empty
  |Node (r, lb, rb) -> (r::preorder lb @ preorder rb)
;;
let rec hojas = function 
   Empty
  |Node (r, lb, rb) -> (r::preorder lb @ preorder rb)
;;



'a btree -> 'a list


