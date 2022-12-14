type maybe_an_int =
  Some of int
  | None;;
  
  
let (//) x y = match (x, y) with 
  Some _, Some 0 -> None
  | Some a, Some b -> Some (a/b)
  | _ -> None;;
  
type booleano = V | F;;

let (&&&) b1 b2 = match (b1,b2) with
  V,V -> V
  | _ -> F
  ;;
(*V &&& V*)
let v = V;;

let (|||) b1 b2 = match (b1,b2) with
  V,_ |_, V -> V
  |_-> F;;


type 'a option =
  Some of 'a
  | None
  ;;
