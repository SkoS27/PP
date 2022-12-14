(*producto vectorial de un par de arrays de elementos definidos como [| x ; x; x;|]*)
let vprod v1 v2 =
 Array.fold_left (+.) 0. (Array.map2 ( *. ) v1 v2);;
 
 (*Registros*)
 type persona ={ nombre: string; edad:int};;
 
 let ma_viejo p = {nombre = p.nombre; edad = p.edad + 1}
 (*añado un año a la persona p*)
 
 let ma_viejo p = {p  with edad = p.edad + 1}
 (*añado un año a la persona p*)
 
 
 type persona ={ nombre: string;mutable edad:int};;
 p.edad <- 50 (*modifico su edad a 50*)
