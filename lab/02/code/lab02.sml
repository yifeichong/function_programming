(* TASK 2.1 *)

(* summ : int -> int *)
(* REQUIRES: n >= 0 *)
(* ENSURES:  summ n returns the sum of the integers 0 through n. *)
fun summ (* write your code here *)
      _ = raise Fail "unimplemented"  (* DELETE THIS LINE *)

(* TASK 2.2 *)

(* double : int -> int *)
(* REQUIRES: n >= 0 *)
(* ENSURES: double n evaluates to 2 * n.*)
fun double (0 : int) : int = 0
  | double n = 2 + double (n - 1)

(* Tests for double *)
val 0 = double 0
val 4 = double 2

(* square : *)
(* REQUIRES: *)
(* ENSURES: *)

(* TASK 2.3 *)

(* divisibleByThree : *)
(* REQUIRES: *)
(* ENSURES: *)

(* TASK 4.1 *)

(* evenP : int -> bool *)
(* GCD: int * int -> int *)
(* REQUIRES:  m, n >= 0    *)
(* ENSURES:   GCD (m, n) returns the g.c.d. of m and n *)
fun GCD (m: int, 0): int = m
  | GCD (0, n: int): int = n
  | GCD (m: int, n: int): int =
        if m > n then GCD(m mod n, n) else GCD(m, n mod m)

(* REQUIRES: n >= 0 *)
(* ENSURES: evenP n evaluates to true iff n is even. *)
fun evenP (0 : int) : bool = true
  | evenP 1 = false
  | evenP n = evenP (n - 2)

(* Tests for evenP *)
val true = evenP 0
val false = evenP 1
val true = evenP 12
val false = evenP 27

(* oddP : *)
(* REQUIRES: *)
(* ENSURES: *)

(* stein : int * int -> int *)
(* REQUIRES:  m, n > 0        *)
(* ENSURES:   stein(m,n) returns the g.c.d. of m and n. *)
fun stein(m,n) =
    if m=n then m else
       if m mod 2 = 0
       then
           if n mod 2 = 0
           then 2 * stein(m div 2, n div 2)
           else stein(m div 2, n)
       else if n mod 2 = 0
            then stein(m, n div 2)
            else if n>m
                 then stein(m, (n-m) div 2)
                 else stein((m-n) div 2, n)


(* TASK 5.1 *)

(* stein' : int * int -> int *)
(* REQUIRES:  m, n > 0        *)
(* ENSURES:   stein'(m,n) returns the g.c.d. of m and n. *)
fun stein'(m,n) =
     (* write your code here *)
     raise Fail "unimplemented"  (* DELETE THIS LINE *)

