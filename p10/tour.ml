exception Not_found

let tour m n shadows k =
  let rec aux i j acc =
    if i = m && j = n then (i, j) :: acc
    else if List.mem (i, j) shadows then aux i j acc
    else if i + k <= m && not (List.mem (i + k, j) shadows) then aux (i + k) j ((i, j) :: acc)
    else if j + k <= n && not (List.mem (i, j + k) shadows) then aux i (j + k) ((i, j) :: acc)
    else raise Not_found
  in (1, 1) :: aux 1 1 [];;