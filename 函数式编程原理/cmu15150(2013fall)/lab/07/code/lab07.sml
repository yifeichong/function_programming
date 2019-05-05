exception Unimplemented


(*********************** Task 3 ***********************)

(* Datatype definition for polymorphic trees *)
datatype 'a tree = Empty
   | Node of 'a tree * 'a * 'a tree

(* Task 3.1 : DOCUMENT, IMPLEMENT, and TEST this function: *)
(*
 * size : 'a tree -> (int -> 'a) -> 'a
 * REQUIRES:
 * ENSURES:
 *)
fun size (T : 'a tree) (k : int -> 'a) : 'a = raise Unimplemented



(* Datatype definition for regular expressions as defined in lecture *)
datatype regexp = Zero
   | One
   | Char of char
   | Plus of regexp * regexp
   | Times of regexp * regexp
   | Star of regexp


val validChars = String.explode "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSUVWXYZ.-"


(*
 * anyChar : char list -> regexp
 * REQUIRES:
 * ENSURES:
*)
fun anyChar (L : char list) : regexp = foldr (fn (c,R) => Plus(Char c, R)) (Zero) L

(* Test cases *)
val Zero = anyChar []
val Plus(Char #"c", Zero) = anyChar [#"c"]
val Plus(Char #"p", Plus(Char #"l", Zero)) = anyChar [#"p",#"l"]


(*
 * fromString : string -> regexp
 * REQUIRES:
 * ENSURES:
 *)
fun fromString s = raise Unimplemented



(*
 * anyString : string list -> regexp
 * REQUIRES:
 * ENSURES:
*)
fun anyString (L : string list) : regexp = raise Unimplemented



(*
 * emailer : string -> regexp
 * REQUIRES:
 * ENSURES: *)
fun emailer (d : string) : regexp = raise Unimplemented

(********************** Task 5 ********************)

(* Type definition for polynomials as defined in handout *)
type poly = int -> real

(* Task 5.1 : DOCUMENT, IMPLEMENT, and TEST these functions: *)
(*
 * add : poly * poly -> poly
 * REQUIRES:
 * ENSURES: *)
fun add (p1 : poly, p2 : poly) : poly = raise Unimplemented



(*
 * mult : poly * poly -> poly
 * REQUIRES:
 * ENSURES:
 *)
fun mult (p1 : poly, p2 : poly) : poly = raise Unimplemented



(*
 * eval : poly -> int -> real -> real
 * REQUIRES:
 * ENSURES:
 *)
fun eval (p : poly) (0 : int) (x : real) : real = raise Unimplemented

