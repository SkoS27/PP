let prime n = 
    let rec check_from i = 
	i >= n || 
	(n mod i <> 0 && check_from (i+1))
    in check_from 2;; 

let rec next_prime n =
    if prime(n + 1) then n +1
    else next_prime(n+1);;


le rec last_prime_to n =
    if prime(n) then n
    else last_prime_to(n - 1);;
    
let is_prime2 n =
    let rec check_from i = 
	i >= n || 
	(n mod i <> 0 && check_from (i+1))
    in check_from 2;; 
