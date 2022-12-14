let rec power' x n =
  if n = 0 then 1
  else if (n mod 2 = 0) then power' (x * x) (n/2)
  else x * power' (x * x) (n/2);;

let powmod m b e = 
  if (power' b e <= max_int && power' b e != 0) then (((b mod m)*(e mod m))mod m)
  else ((e/2) mod m)*(b mod m);;

