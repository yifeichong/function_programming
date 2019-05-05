(* toInt2 : int list -> int
 * REQUIRES: All elements of L are either 0 or 1.
 * ENSURES: toInt2 L evaluates to the integer whose binary representation
 * with most significant digit in the leftmost place is L.
 *)
fun toInt2 (L : int list) : int =
    if List.all (fn x => x = 0 orelse x = 1) L
    then
      List.foldl (fn (a,b) => a + (2 * b)) 0 L
    else
      raise Fail "An element of the list was too large"

(* Tests for toInt2 *)
val 0 = toInt2 []
val 0 = toInt2 [0]
val 1 = toInt2 [1]
val 2 = toInt2 [1,0]
val 3 = toInt2 [1,1]
val 3 = toInt2 [0,1,1]
val 14 = toInt2 [1,1,1,0]

(* allZeros : (int * int list) list -> bool
 * REQUIRES: true
 * ENSURES: allZeros L will be true iff for every element (x,ds) of L, x is 0,
 * and false otherwise.
 *)
fun allZeros (L : (int * int list) list) : bool = List.all (fn (x,_) => x = 0) L

(* Tests for allZeros*)
val true = allZeros []
val true = allZeros [(0,[])]
val true = allZeros [(0,[1,2,3]),(0,[0,0,0]),(0,[])]
val false = allZeros [(1,[])]
val false = allZeros [(1,[0,0,0])]
val false = allZeros [(0,[1,2,3]),(1,[0,0,0,0]),(0,[0,0])]

(* exp2 : int -> int
 * REQUIRES: x >= 0
 * ENSURES: exp2 x evaluates to 2^x.
 *)
fun exp2 0 = 1
  | exp2 x = 2 * (exp2 (x - 1))

(* Tests for exp2 *)
val 1 = exp2 0
val 2 = exp2 1
val 4 = exp2 2
val 8 = exp2 3
val 16 = exp2 4

(* Task 3.1 *)

fun rep (x : int, ds : int list) : int =
    (* Remove the next line when you implement this function. *)
    raise Fail "Not yet implemented"

(* Task 3.2 *)

fun divmod (x : int, ds : int list) : (int * int list) =
    (* Remove the next line when you implement this function. *)
    raise Fail "Not yet implemented"

(* Task 3.3 *)

fun partition (p : 'a -> bool) (L : 'a list) : ('a list * 'a list) =
    (* Remove the next line when you implement this function. *)
    raise Fail "Not yet implemented"

(* Task 3.4 *)

fun rad (L : (int * int list) list) : (int * int list) list =
    (* Remove the next line when you implement this function. *)
    raise Fail "Not yet implemented"

(* Task 3.5 *)
fun radixsort (L : int list) : int list =
    (* Remove the next line when you implement this function. *)
    raise Fail "Not yet implemented"

(* Task 6.1 *)
fun make (n : int) (L : int list) : string list option =
    raise Fail "Not yet implemented"

(* Task 6.2 *)
fun make_C (n : int) (L : int list)
           (s : string list -> 'a) (k : unit -> 'a) : 'a =
    raise Fail "Not yet implemented"
