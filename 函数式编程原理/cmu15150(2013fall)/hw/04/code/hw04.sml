(* Defining Trees *)
datatype tree =
    Node of tree * int * tree
  | Empty

datatype rtree =
    rNode of rtree * real * rtree
  | rEmpty

(* Real trees cannot be compared directly (because reals cannot be compared
 * directly).  Use this function to check if two rtrees are the same, using
 * a small positive epsilon. *)  
fun treeCompare(epsilon : real, rEmpty : rtree, rEmpty : rtree) = true
  | treeCompare(epsilon, rNode(a, x, b), rNode(c, y, d)) =
  		(y < (x + epsilon)) andalso (y > (x - epsilon)) andalso
  		treeCompare(epsilon, a, c) andalso treeCompare(epsilon, b, d)
  | treeCompare(_, _, _) = false


(* TASK 2 *)

fun fastfib (n : int) : int = raise Fail "Unimplemented"

(* TASK 3 *)

fun geometricTree (d : int, r : real) : rtree = raise Fail "Unimplemented"

(* TASK 4 *)

fun part (p : int, L : int list) : int list * int list =
  raise Fail "Unimplemented"

fun quicksort (L : int list) : int list = raise Fail "Unimplemented"

(* TASK 5 *)

fun traver (T : tree, L : int list) : int list = raise Fail "Unimplemented"

(* TASK 7 *)

fun treecompare (T1 : tree, T2 : tree) : order = raise Fail "Unimplemented"

fun swapDown (T : tree) : tree = raise Fail "Unimplemented"

fun heapify (T : tree) : tree = raise Fail "Unimplemented"
