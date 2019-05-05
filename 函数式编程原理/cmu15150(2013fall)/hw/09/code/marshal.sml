structure MarshalBool : MARSHAL =
struct
    type t = bool

    fun write b =
        case b
         of true => "(TRUE)"
          | false => "(FALSE)"

    fun read s =
        case Util.peelOff("(TRUE)",s)
         of SOME s => SOME (true,s)
          | NONE =>
            (case Util.peelOff("(FALSE)",s)
              of SOME s => SOME (false,s)
               | NONE => NONE)
end

(********** TASK 5.1 **********)
(* structure MarshalInt : MARSHAL =
struct

Uncomment this structure and implement it here

end*)

(********** TASK 5.2 **********)
(* functor MarshalPair (P : MARSHALPAIR) : MARSHAL =
struct

Uncomment this structure and implement it here

end *)

(********** TASK 5.3 **********)
(*functor MarshalList (S : MARSHAL) : MARSHAL =
struct

Uncomment this structure and implement it here

end *)

(********** TASK 5.4 **********)



(********** TASK 5.5 -- extra credit! **********)





(* Here's a bonus example: *)

(*
structure GradesDB =
struct

type grades = (string * (int list * string list)) list

val db : grades =
 [("nkindber", ([95,99,98], (["y","n","y","y"]))),
  ("icw", ([99,99,99], (["y","y","y","y","y"]))),
  ("amyz", ([97,99,99], (["y","y","y","y","y"]))),
  ("yschen", ([100,100,100], (["n","n","n","y","n"]))),
  ("brookes", ([98,98,98], (["y","y","y","y","y"]))),
  ("drl", ([98,100,98], (["y","y","y","y","y"])))
  ]
structure SG =
MarshalList(
  MarshalPair(
  struct
    structure M1 = MarshalString
    structure M2 = MarshalPair(
                   struct
                    structure M1 = MarshalList(MarshalInt)
                    structure M2 = MarshalList(MarshalString)
                   end)
  end))


val sdb = SG.write db
val db' = SG.read sdb

end
*)
