let rec mcd (x, y) =
  if y = 0 then x
  then mcd ((x mod y),y)
