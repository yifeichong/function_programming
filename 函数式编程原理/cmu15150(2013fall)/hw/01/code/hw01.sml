(* pi: real *)
val pi : real = 3.14159;

(* fact: int -> int *)
fun fact (0 : int) : int = 1
  | fact n = n * (fact (n - 1))

(* f : int -> int *)
fun f (3 : int) : int = 9
    f _ = 4

(* circ : real -> real *)
fun circ (r : real) : real = 2 * pi * r

(* semicirc : real -> real *)
fun semicirc : real = pie * r

(* area : real -> real *)
fun area (r : int) : real = pi * r * r
