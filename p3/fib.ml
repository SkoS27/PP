let rec fib n = if n <= 1 then n else fib(n-1) + fib(n-2);;

let rec cont n = if n = 0 then "0" else cont(n-1)^ "\n" ^string_of_int(fib(n));;	

let rec mostrar = if (Array.length Sys.argv)= 2 then (cont(int_of_string(Sys.argv.(1)))) else ("sobrepasado el numero de argumentos") in print_endline mostrar;;
