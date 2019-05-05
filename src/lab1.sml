(*2*)
fun mult[] = 1
  | mult(x::L) = x * (mult L);
mult[2,3,4];

(*3*)
 fun Mult[] = 1
	| Mult(r::R) = (mult r) * (Mult R);
Mult[[1,2],[3,4],[5,6]];

(*4*)
(* mult' :int list * int -> int      *)
(* REQUIRES:true                     *)
(*ENSURES:mult'(L,a) evaluates to the product of the integers in L and the integers of a*)

fun mult'([],a) = a
	|mult'(x::L,a) = mult'(L,x*a);

mult'([2,3,4],5);

fun Mult'([],a) = a
	|Mult'(r::R,a) = mult'(r,1) * Mult'(R,a);

Mult'([[1,2],[3,4],[5,6]],7);


(*5*)
(* double : int -> int *)
(* REQUIRES: n >= 0 *)
(* ENSURES: double n evaluates to 2 * n.*)

fun double (0 : int) : int = 0
    | double n = 2 + double (n - 1);

fun square (0 : int) : int = 0
    | square n = double(n) + square (n-1)-1;

square(9);

(*6*)
(* divisibleByThree : int -> bool 	*)
(* REQUIRES: true				*)
(* ENSURES: divisibleByThree n evaluates to true if n is a multiple of 3 and to false otherwise *)
fun divisibleByThree (0 : int) : bool = false
  	    | divisibleByThree 3 = true
  	    | divisibleByThree 2 = false
  	    | divisibleByThree 1 = false
  	    | divisibleByThree n = divisibleByThree (n - 3);
divisibleByThree(81);
divisibleByThree(82);

(*7*)
(* oddp : int -> bool 		*)
(* REQUIRES: n >= 0 		*)
(* ENSURES: oddp n evaluates to true iff n is oddp. *)
fun oddp (0 : int) : bool = false
  	| oddp 1 = true
  	 | oddp n = oddp (n - 2);

oddp(11);
oddp(12);