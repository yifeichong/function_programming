structure ListSets : INTSET =
struct
  exception NotYetImplemented
  exception NotInSet

  type set = int list

  val empty = fn () => raise NotYetImplemented


  fun find (n : int) (s : set) = raise NotYetImplemented


  fun insert (n : int) (s : set) = raise NotYetImplemented


  fun delete (n : int) (s : set) = raise NotYetImplemented


  (* union, intersection, and difference must use higher-order functions *)
  fun union (s1 : set) (s2 : set) = raise NotYetImplemented


  fun intersection (s1 : set) (s2 : set) = raise NotYetImplemented


  fun difference (s1 : set) (s2 : set) = raise NotYetImplemented

end

structure TestListSets =
struct
  (* Note that we have to use 'ListSets.find' rather than 'find',
   *  since we're in a different structure.
   *)
  val emptySet = ListSets.empty()
  val oneFive = ListSets.insert 5 emptySet
  val true = ListSets.find 5 oneFive

  (* Your tests here! *)

end
