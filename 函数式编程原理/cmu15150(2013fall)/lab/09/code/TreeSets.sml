structure TreeSets : INTSET =
struct
  exception NotYetImplemented
  exception IntentionallyUnimplemented

  exception NotInSet

  datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree

  type set = int tree

  val empty = fn () => raise NotYetImplemented

  fun find (n : int) (Empty : set) = raise NotYetImplemented

  fun insert (n : int) (Empty : set) = raise NotYetImplemented

  (* delete : int -> set -> set
   * requires: true
   * ensures: raises IntentiallyUnimplemented
   *
   * You don't have to implement delete; though once you learn mutually recursive
   *   functions, you'll be able to.
   *
   * Luckily, you can write union, intersection, and difference without delete!
   *)
  fun delete (n : int) (s : set) = raise IntentionallyUnimplemented

  fun union (Empty : set) (s2 : set) = raise NotYetImplemented

  fun intersection (Empty : set) (s2 : set) = raise NotYetImplemented

  fun difference (Empty : set) (s2 : set) = raise NotYetImplemented

end

structure TestTreeSets =
struct
  (* 'open' brings everything in the TreeSet namespace into this structure.
   *   We can now use 'insert' instead of 'TreeSets.insert'
   *)
  open TreeSets

  (* t = <5, 6> *)
  val t = empty()
  val t = insert 5 t
  val true = find 5 t

  (* Your tests here! *)

end
