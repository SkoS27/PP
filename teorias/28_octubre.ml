let rec rev_append l1 l2 = match l1 with
  [] ->l2
  | h::t -> rev_append t (h::l2);;
  
  
let append' l1 l2 =
  rev_append (list.rev l1) l2;;
