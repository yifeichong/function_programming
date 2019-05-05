functor TreeDict (K : ORDERED) : DICT =
struct

  structure Key = K

  (* Invariant: BST *)
  datatype ('k, 'v) tree =
    Empty
  | Node of ('k, 'v) tree * ('k * 'v) * ('k, 'v) tree

  type 'v dict = (Key.t, 'v) tree

  (* Your code goes here *)
end
