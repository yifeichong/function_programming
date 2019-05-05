(* ---------------------------------------------------------------------- *)
(* For Sec 7.1 *)
fun intToString (x : int) : string = Int.toString x
(* ---------------------------------------------------------------------- *)

(* ---------------------------------------------------------------------- *)

(* Code from class *)

(* sum : int list -> int*)
(* REQUIRES: true*)
(* ENSURES: sum(L) evaluates to the sum of the integers in L.*)
fun sum ([ ] : int list) : int = 0
 |  sum (x::L) = x + (sum L)

(* count : int list list -> int*)
(* REQUIRES: true*)
(* ENSURES: count(R) evaluates to the sum of the integers in R.*)
fun count ([ ] : int list list) : int = 0
 |  count (r::R) = (sum r) + (count R)
