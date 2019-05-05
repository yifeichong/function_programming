
(* Remove this when you're done to make sure you didn't miss anything *)
exception Unimplemented

datatype regexp =
    Zero
  | One
  | Char of char
  | Plus of regexp * regexp
  | Times of regexp * regexp
  | Star of regexp
  | Whatever
  | Both of regexp * regexp

(* match : regexp -> char list -> (char list -> bool) -> bool *)
fun match (R : regexp) (L : char list) (p : char list -> bool) : bool =
    case R of
        Zero => false
      | One => p L
      | Char c => (case L of
                     [] => false
                   | c' :: L' => (c = c') andalso p L')
      | Plus (R1, R2) => match R1 L p orelse match R2 L p
      | Times (R1, R2) => match R1 L (fn L' => match R2 L' p)
      | Star R => p L orelse match R L (fn L' => (L <> L') andalso
                                                 match (Star R) L' p)
      (* Task 2.1 *)
      | Whatever => raise Unimplemented
      (* Task 2.2 *)
      | Both (R1, R2) => raise Unimplemented
                         
fun accept R s = match R (String.explode s) (fn [] => true | _ => false)

(* Task 2.1 Tests *)

(* Task 2.2 Tests *)


(* Task 3.1 *)
(* halfmatch : regexp -> regexp -> char list -> bool *)
fun halfmatch (R1 : regexp) (R2 : regexp) (L : char list) : bool = 
    raise Unimplemented
