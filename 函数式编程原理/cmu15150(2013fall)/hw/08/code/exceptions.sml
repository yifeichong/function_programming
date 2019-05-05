(* What went wrong? : 
 * How did you fix it? :
 *)
structure Factorize : FACTORIZE =
struct
 exception Prime

 (* next_divisor : int * int -> int *)
 (* REQUIRES : n > 1, k <= n, k > 1 *)
 (* ENSURES : evaluates to the smallest divisor of n
  * which is at least k *)
 fun next_divisor (n : int, k : int) : int =
     case n mod k of
       0 => k
     | _ => next_divisor (n, k + 1)

 (* factorizer : int -> int list *)
 (* REQUIRES : n > 1, n is not prime *)
 (* ENSURES : evaluates to a list of the prime divisors of n *)
 fun factorizer (n : int) : int list =
     let
       val q = next_divisor (n, 2)
     in
       if q = n then raise Prime
       else
	     let
	       val q_divs = factorizer q handle Prime => [q]
	     in
	       q_divs @ factorizer (n div q)
	     end
     end

end


