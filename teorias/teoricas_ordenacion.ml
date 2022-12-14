let rec insert x l =match l with 
  []-> [x]
  | h::t -> if x <=h then x::l
            else h :: insert x t;;
            
let rec isort = function 
  [] -> []
  h::t -> insert h (isort t);;
