exception Unimplemented


(* -------------------- Task 3 -------------------- *)

(* fold code for your reference *)

(*
 * foldr : ('a * 'b -> 'b) -> 'b -> 'a list -> 'b
 * ENSURES: Given a function f, an identity e, and a list l = [a_0 ... a_n],
 * foldr f e l evaluates to f(a_0, f(a_1, f(a_2, ... f(a_n, e) ... ))), or e
 * if the list is empty. foldr stands for "fold right"
 *)
fun foldr (f : 'a * 'b -> 'b) (e : 'b) (l : 'a list) : 'b =
    case l of
      []  => e
    | x::xs => f (x, foldr f e xs)

(*
 * sum : int list -> int
 * ENSURES: sum l evaluates to the sum of the elements in l
 *)
fun sum (l : int list) : int =
    case l of
      []  => 0
    | x::xs => x + (sum xs)

(*
 * sum' : int list => int
 * ENSURES: sum' l evaluates to the sum of the elements in l
 *)
fun sum' (l : int list) : int = foldr (fn (x,y) => x + y) 0 l


(* Task 3.2 : DOCUMENT, IMPLEMENT, and TEST these functions: *)
(* exists : ('a -> bool) -> 'a list -> bool
 * REQUIRES:
 * ENSURES: *)
fun exists (p : 'a -> bool) (l : 'a list) : bool =
    raise Unimplemented (* exists must NOT be recursive *)


(* forall : ('a -> bool) -> 'a list -> bool
 * REQUIRES:
 * ENSURES: *)
fun forall (p : 'a -> bool) (l : 'a list) : bool =
    raise Unimplemented (* forall must NOT be recursive *)

(* -------------------- Task 4 -------------------- *)

(* Polymorphic tree datatype representing a tree with data ONLY at leaves *)
datatype 'a tree = Empty
                 | Node of 'a tree * 'a * 'a tree

(* This function may help with test cases for trees*)
(* treeeq : ('a * 'a -> bool) -> 'a tree -> 'a tree -> bool *)
fun treeeq (eq: 'a * 'a -> bool) (Empty : 'a tree) (Empty : 'a tree) = true
 |  treeeq (eq) (Node (l1, x1, r1)) (Node (l2, x2, r2)) =
      (treeeq eq l1 l2) andalso (treeeq eq r1 r2) andalso eq (x1, x2)
 |  treeeq(eq) (_) (_) = false

val true = treeeq op= (Empty : int tree) (Empty)
val true = treeeq op= (Node (Empty, 9, Empty)) (Node (Empty, 9, Empty))
val true = treeeq Real.==
                  (Node (Node (Empty, 2.3, Empty), ~1.0, Node (Empty, 3.1, Empty)))
                  (Node (Node (Empty, 2.3, Empty), ~1.0, Node (Empty, 3.1, Empty)))
val false = treeeq op= (Node(Empty, 6, Empty)) (Empty)
val false = treeeq op= (Node (Empty, ~2, Empty)) (Node (Empty, 6, Empty))
val false = treeeq op=
                   (Node (Empty, 7, Empty))
                   (Node (Node (Empty, 4, Empty), 7, Node (Empty, 10, Empty)))

(* Task 4.1 DOCUMENT, IMPLEMENT, and TEST this function: *)
(*
 * treeFilter : ('a -> bool) -> 'a tree -> 'a option tree
 * REQUIRES:
 * ENSURES:
*)
fun treeFilter (p : 'a -> bool) (t : 'a tree) : 'a option tree =
    raise Unimplemented

(* Task 4.2 DOCUMENT, IMPLEMENT, and TEST this function: *)
(*
 * treexists : ('a -> bool) -> 'a tree -> 'a option
 * REQUIRES:
 * ENSURES:
*)
fun treexists (p : 'a -> bool) (t : 'a tree) : 'a option =
    raise Unimplemented

(* Task 4.3 DOCUMENT, IMPLEMENT, and TEST this function: *)
(*
 * treeAll : ('a -> bool) -> 'a tree -> bool
 * REQUIRES:
 * ENSURES:
 *)

fun treeAll (p : 'a -> bool) (t : 'a tree) : bool =
    (* don't use treexists, please! *)
    raise Unimplemented

(* Task 4.4 : DOCUMENT, IMPLEMENT, and TEST this functions: *)
(*
 * treeAll' : ('a -> bool) -> 'a tree -> bool
 * REQUIRES:
 * ENSURES: *)
fun treeAll' (p : 'a -> bool) (t : 'a tree) : bool =
    (* no recursion, please! *)
    raise Unimplemented

(* Task 4.6 : DOCUMENT, IMPLEMENT, and TEST this functions: *)
(*
 * onlyEvenTrees : (int tree) tree -> (int tree option) tree
 * REQUIRES:
 * ENSURES: *)
fun onlyEvenTrees (t : int tree tree) : (int tree option) tree =
    raise Unimplemented

(* Task 4.7 : DOCUMENT, IMPLEMENT, and TEST this function: *)
(*
 * safetree : int tree -> int option tree
 * REQUIRES:
 * ENSURES:
 *)
fun safetree (t : int tree) : int option tree =
    raise Unimplemented


(* -------------------- Task 5 -------------------- *)

datatype 'a narytree = Emp
                     | Bud of 'a
                     | Branch of 'a narytree list

(* This function may help with test cases for trees*)
(* ntreeeq : ('a * 'a -> bool) -> 'a narytree -> 'a narytree -> bool *)
fun ntreeeq(eq: 'a*'a-> bool) (Emp:'a narytree)(Emp: 'a narytree) = true
 |  ntreeeq(eq) (Bud x)(Bud y) = eq(x,y)
 |  ntreeeq(eq) (Branch(t1s)) (Branch (t2s)) =
         List.foldr (fn ((t1,t2),b)=> (ntreeeq eq t1 t2) andalso b)
                     true (ListPair.zip(t1s,t2s))
 |  ntreeeq(eq) (_) (_) = false

val true = ntreeeq op= (Emp:int narytree)(Emp)
val true = ntreeeq op= (Bud 6) (Bud 6)
val true = ntreeeq Real.== (Branch [ Bud 2.3, Bud 3.1,  Bud ~4.5] )
                            (Branch [Bud 2.3, Bud 3.1,  Bud ~4.5])
val false = ntreeeq op= (Bud 6) (Emp)
val false = ntreeeq op= (Bud ~2) (Bud 6)
val false = ntreeeq op= (Bud 6) (Branch [Bud 6,Bud 10])
val true = ntreeeq op= (Branch [Emp, Bud "5", Bud "st"])
                       (Branch [Emp,Bud "5", Bud "st"])

(* Task 5.1 : DOCUMENT, IMPLEMENT, and TEST this function: *)
fun fuller (n: int, a: int) : int narytree =
    raise Unimplemented

(* Task 5.2 : DOCUMENT, IMPLEMENT, and TEST this function: *)
fun narytreemap (f: 'a -> 'b) (t: 'a narytree) : 'b narytree =
    raise Unimplemented

(* Task 5.3 : DOCUMENT, IMPLEMENT, and TEST this function: *)
fun narytreereduce (g: 'a -> 'a -> 'a) (b: 'a) (t: 'a narytree) : 'a narytree =
    raise Unimplemented

(* Task 5.4 : DOCUMENT, IMPLEMENT, and TEST this function: *)
fun narytreemapreduce (f: 'a -> 'b) (g: 'b * 'b -> 'b) (b: 'b)
                    (t: 'a narytree) : 'b =
    raise Unimplemented
