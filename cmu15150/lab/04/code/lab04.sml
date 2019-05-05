(* ---------------------------------------------------------------------- *)
(* Functions provided by the course staff. *)

(* max : int * int -> int
 * REQUIRES: true
 * ENSURES: max (x, y) ==> the greater of x or y
 *
 * Examples:
 *  max (1, 4) ==> 4
 *  max (~4, 0) ==> 0
 *  max (2, 2) ==> 2
 *)
fun max (n1 : int, n2 : int) : int =
    case Int.compare(n1,n2)
     of LESS => n2
      | _ => n1

val 4 = max (1, 4)
val 0 = max (~4, 0)
val 2 = max (2, 2)

(* split : int list -> int list * int * int list
 * REQUIRES: l is non-empty
 * ENSURES: there exist l1,x,l2 such that
 *    split l == (l1,x,l2) and
 *    l == l1 @ x::l2 and
 *    length(l1) and length(l2) differ by no more than 1
 *)
fun split ([] : int list) : (int list * int * int list) = 
    raise Fail "split should never be called on an empty list"
  | split l = 
    let
      val midlen = (length l) div 2
      val front = (List.take (l,midlen))

      (* because we round down, if the list is non-empty, this
       * has at least one thing in it
       *)
      val x :: back = (List.drop (l,midlen))
    in
      (front, x, back)
    end

(* ---------------------------------------------------------------------- *)
(* Functions you, the student, need to implement. *)

(***** Section 2: Depth  *****)

datatype tree =
    Empty
  | Node of (tree * int * tree)

(* Task 2.1 *)

fun depth (t : tree) : int = raise Fail "Unimplemented"

(* ---------------------------------------------------------------------- *)

(***** Section 3: Lists to Trees *****)

(* Task 3.1 *)

fun listToTree (l : int list) : tree = raise Fail "Unimplemented"

(* ---------------------------------------------------------------------- *)

(***** Section 4: Reverse *****)

(* treeToList : tree -> int list
 * REQUIRES: true
 * ENSURES: returns a list of the elements in the tree,
 *           ordered by an in-order traversal 
 *)
fun treeToList (Empty : tree) : int list = []
  | treeToList (Node(l,x,r)) = treeToList l @ (x :: (treeToList r))

(* Task 4.1 *)
fun revT (t : tree) : tree = raise Fail "Unimplemented"

(* ---------------------------------------------------------------------- *)

(***** Section 5: Binary Search *****)

(* Task 5.1 *)

fun binarySearch (t : tree, x : int) : bool = raise Fail "Unimplemented"

