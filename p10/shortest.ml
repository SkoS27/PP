exception Not_found

let shortest_tour m n shadows k =
  let rec aux i j acc steps =
    if i = m && j = n then (i, j) :: acc
    else if List.mem (i, j) shadows then aux i j acc steps
    else if i + k <= m && not (List.mem (i + k, j) shadows) then aux (i + k) j ((i, j) :: acc) (steps + 1)
    else if j + k <= n && not (List.mem (i, j + k) shadows) then aux i (j + k) ((i, j) :: acc) (steps + 1)
    else raise Not_found
  in
  let rec find_path steps =
    try aux 1 1 [] steps with Not_found ->
      if steps > 0 then find_path (steps - 1)
      else raise Not_found
  in (1, 1) :: find_path k;;