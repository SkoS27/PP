let rec sum_cifras n =
  if n = 0 then 0
  else(n/(int_of_float(10. ** (float_of_int((String.length (string_of_int (abs n)))-1))))) + sum_cifras(n mod (int_of_float(10. ** (float_of_int((String.length (string_of_int (abs n)))-1)))))


let num_cifras n = String.length (string_of_int (abs n))

let rec num_cifras n =
  if (n >= 0 && n < 10) then 1
  else (1 + num_cifras (n/10))
  
  
let rec exp10 n =
 if n = 0 then 1
 else 10 *(exp10(n-1))
 
let rec reverse n =
    if (n >= 0 && n < 10) then n
    else ( (n mod 10) * (int_of_float(10. **(float_of_int((String.length (string_of_int (abs n)))-1)))) + reverse (n / 10))


let rec palindromo s =
  if String.length s = 1 then true
  else ((s.[0] == s.[(String.length s)-1]) && );;
