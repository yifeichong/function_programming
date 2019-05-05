use "lib.sml";

(* ---------------------------------------------------------------------- *)
(* Section 3 - Bases *)
(* Task 3.1 *)
fun toInt (base : int) (digits : int list) : int =
  raise Fail "Unimplemented!"

(* Task 3.2 *)
fun toBase (base : int) (n : int) : int list =
  raise Fail "Unimplemented!"

(* Task 3.3 *)
fun convert (base1 : int, base2 : int) (digits : int list) : int list =
    raise Fail "Unimplemented!"


(* ---------------------------------------------------------------------- *)
(* Section 4 - Polymorphism, HOFs, Options *)
(* Task 4.1 *)
fun dotProduct (a : real list, b : real list) : real =
  raise Fail ("Unimplemented!")

(* Task 4.2 *)
fun magnitudeOfVector (a : real list) : real =
  raise Fail ("Unimplemented!")

(* Task 4.3 *)
fun angleBetweenVectors (a : real list, b : real list) : real =
  raise Fail ("Unimplemented!")

(* Task 4.4 *)
fun extract (p : 'a -> bool, l : 'a list) : ('a * 'a list) option =
  raise Fail "Unimplemented!"


(* ---------------------------------------------------------------------- *)
(* Section 5 - Blocks World *)
(* Task 5.1 *)
fun extractMany (eq : 'a * 'a -> bool,
                 toExtract : 'a list, from : 'a list) : ('a list) option =
  raise Fail "Unimplemented"


(* Task 5.2 *)
datatype block = YOUR_CONSTRUCTORS_HERE

datatype move = YOUR_CONSTRUCTORS_HERE

datatype fact = YOUR_CONSTRUCTORS_HERE

type state = fact list

(* Task 5.3 *)
val initial : state = [] (* CHANGE THIS VALUE *)

(* instantiates extractMany with equality for your fact datatype *)
fun extractManyFacts (toConsume : fact list, s : state) : state option =
  extractMany (fn (x : fact, y : fact) => x = y, toConsume, s)

(* Task 5.4 *)
fun consumeAndAdd (s : state, bef : fact list, aft : fact list) : state option =
  raise Fail "Unimplemented"


(* Task 5.5 *)
fun step (m : move, s : state) : state option = raise Fail "Unimplemented"


(* ---------------------------------------------------------------------- *)
(* Task 7.1 *)
fun shrubMap (f : 'a -> 'b) (s : 'a shrub) : 'b shrub =
  raise Fail "Unimplemented!"

(* Task 7.4 *)
fun shrubCombine (f : 'a * 'a -> 'a) (i : 'a) (s : 'a shrub) : 'a =
    raise Fail "Unimplemented!"
