(* Remove this line when you've finished all tasks *)
exception Unimplemented

(* Contains some helpful functions for testing *)
structure SequenceHelper =
struct

  (* Returns the maximum element of a list and the remaining elements *)
  fun maxL (cmp : 'a * 'a -> order) (L : 'a list) : ('a * 'a list) = 
      let
        val max = List.foldl 
                      (fn(a, b) => case cmp(a, b) of GREATER => a | _ => b) 
                      (List.hd L) L
      in (max, List.filter (fn n => cmp(n, max) <> EQUAL) L) end

  (* Generates a sequence from a list *)
  fun seqFromList (l : 'a list) : 'a Seq.seq =
      Seq.tabulate (fn i => List.nth (l, i)) (List.length l)

  (* Generates a farm (int seq seq) from int list list *)
  fun farmFromList (l : int list list) : int Seq.seq Seq.seq =
      Seq.map seqFromList (seqFromList l)

  (* Checks if two sequences are equal, given equality function p *)
  fun seqEq (p: 'a * 'a -> bool) (s1 : 'a Seq.seq, s2 : 'a Seq.seq) : bool =
      if Seq.length s1 <> Seq.length s2 then false
      else Seq.mapreduce p true (fn (x,y) => x andalso y) (Seq.zip (s1, s2))

  (* Some farms for your testing convenience *)
  val emptyFarm = farmFromList []
  val lonelyFarm = farmFromList [[1]]
  val smallFarm = farmFromList [[1, 2, 3],
                                [4, 0, 5],
                                [6, 7, 8]]
  val bigFarm = farmFromList [[ 1, 10,  4,  5, 12],
                              [ 3,  0,  7, 13, 24],
                              [20,  8,  2, 21, 11],
                              [23, 22, 19,  6, 15],
                              [14, 17, 15,  9, 18]]

end

structure Sequences =
struct
  open SequenceHelper

  (* Task 4.1 *)
  fun myAppend (s1 : 'a Seq.seq, s2 : 'a Seq.seq) : 'a Seq.seq =
      raise Unimplemented

  (* Task 4.2 *)
  fun max4 (cmp : 'a * 'a -> order) (((a, b), (c, d)) : ('a * 'a) * ('a * 'a)) : ('a * 'a) =
      raise Unimplemented

  (* Task 4.3 *)
  fun twoLargest (cmp : 'a * 'a -> order) (b : 'a * 'a) (s : 'a Seq.seq) : ('a * 'a) =
      raise Unimplemented

  (* Task 6.1 *)
  (* note that atEdge and isSink are optional, but probably useful *)

  fun atEdge (s : int Seq.seq Seq.seq) (i : int, j : int) : bool =
      raise Unimplemented

  fun isSink (s : int Seq.seq Seq.seq) (i : int, j : int) : bool =
      raise Unimplemented

  fun rainfall (elevations : int Seq.seq Seq.seq) : (int * int) Seq.seq =
      raise Unimplemented

end
