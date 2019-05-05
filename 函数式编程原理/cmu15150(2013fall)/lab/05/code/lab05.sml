(***** Section 3 Higher Order Functions *****)

(* Task 3.1 *)
val double: int -> int = fn _ => raise Fail "Unimplemented"
val quadruple : int -> int = fn _ => raise Fail "Unimplemented"

(* Task 3.2 *)
fun thenAddOne ((f:int -> int), (x:int)) : int =
    raise Fail "Unimplemented"

(* Uncomment to test your functions! *)
(*
val 5 = thenAddOne(double, 2)
val 13 = thenAddOne(quadruple, 3)
val ~1 = thenAddOne(fn x => ~x, 2)
*)

(* doubleList and quadrupleList reproduced for your convenience *)

fun doubleList ([] : int list): int list = []
  | doubleList (x::xs) =
    (double x)::(doubleList xs)

fun quadrupleList ([]:int list): int list = []
  | quadrupleList (x::xs) =
    (quadruple x)::(quadrupleList xs)

(* Task 3.3 *)
fun mapList (f: 'a -> 'b, L : 'a list): 'b list =
    raise Fail "Unimplemented"

(* Task 3.4 *)
fun mapList' (f: 'a -> 'b) (L : 'a list) : 'b list =
    raise Fail "Unimplemented"

(* Task 3.5 *)
(* TODO: Write tests here *)


(***** Section 4 Options ******)
(* Task 4.1 *)
fun findOdd (l : int list) : int option = raise Fail "Unimplemented"

(* subsetSumCert provided for your convenience *)
fun subsetSumCert (nil : int list, s : int): bool * int list = (s=0, nil)
  | subsetSumCert (x::xs, s) =
    case subsetSumCert (xs, s-x) of
      (true, l1) => (true, x::l1)
    | (false, _) => subsetSumCert (xs,s)

(* Task 4.2 *)
fun subsetSumOption (l : int list, s : int) : int list option =
    raise Fail "Unimplemented"