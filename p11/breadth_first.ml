open G_tree;;

let rec breadth_first = function
    Gt (x, []) -> [x]
  | Gt (x, (Gt (y, t2))::t1) -> x :: breadth_first (Gt (y, t1@t2));;


  (* Versión terminal de breadth_first. Recorre el árbol en anchura y
     devuelve la lista de nodos resultante. *)
  let breadth_first_t (Gt (x, children)) =
    (* Función auxiliar que recorre el árbol en anchura y añade los
       nodos a una lista. *)
    let rec aux acc = function
      | [] -> acc
      | Gt (x, children) :: rest ->
          aux (x :: acc) (rest @ children)
    in
    aux [x] children


    (* Árbol infinito. Devuelve un árbol con un nodo más en cada llamada. *)
let rec treeInf = Gt (0, [treeInf])

(* t2 es un árbol infinito. No es posible calcular breadth_first t2, ya
   que la función no terminaría nunca. Sin embargo, sí es posible
   calcular breadth_first t t2, ya que t es un árbol finito. *)
let t2 = treeInf