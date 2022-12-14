  let rec qsort1 ord = function
    [] -> []
    | h::t -> let after, before = List.partition (ord h) t in
              qsort1 ord before @ h :: qsort1 ord after;;
            
            
  
  let rec qsort2 ord =
  let append' l1 l2 = List.rev_append (List.rev l1) l2 in
  function
    [] -> []
  | h::t -> let after, before = List.partition (ord h) t in
            append' (qsort2 ord before) (h :: qsort2 ord after);;

  let rlist n = List.init n (fun _ -> Random.int n);;
  
  
(*con un valor n = 500.000 se produce un stack overflow con qsort 1, pero no con qsort2, además, comprobando con valores mas pequeños aparentemente la ordenacion qsort1 es más eficiente que el qsort2*)
