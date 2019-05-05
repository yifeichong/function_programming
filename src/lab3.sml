(*1*)
val double = fn n => n*2;
fun thenAddOne(f,b:int) =1 + f b;
thenAddOne(double,3);

(*2*)
fun mapList(f,[]) = []
	|mapList(f,(x::xs)) = f x :: mapList(f,xs);
mapList(double,[1,2,3]);

(*3*)
fun mapList'(f) = map f;
mapList'(double) [1,2,3];

(*4*)
fun oddp (0 : int) : bool = false
  	| oddp 1 = true
  	 | oddp n = oddp (n - 2)

datatype 'a option = NONE | SOME of 'a;

fun findOdd [] = NONE
	| findOdd (x::xs) = 
		if oddp x then SOME x
				  else findOdd xs;

findOdd [2,4,6,8,9];
findOdd [2,4,6,8,10];
findOdd [2,4,6,8,9,11];

(*5*)

fun subsetSumOption ([],_) = NONE
    |subsetSumOption ([x],s) = if x=s
                             then SOME [x]
                             else NONE
    |subsetSumOption(x::L,s) = let 
                                val if_choose_x = subsetSumOption(L,s-x)
                                val if_not_choose_x = subsetSumOption(L,s)
                             in 
                                if if_choose_x = NONE
                                then if_not_choose_x
                                else SOME(x::(fn SOME (x) => x| NONE =>[])if_choose_x)
                              end;
val oddlist = [1,3,5,7,9,11,13];
val testsubset2 = subsetSumOption(oddlist,49);
val testsunset3 = subsetSumOption(oddlist,100);

(*6*)
fun exists (p,[]) = false
	| exists (p, x::xs) = if p x = true then true 
						  else exists (p,xs);
exists(oddp,[1,3,5]);
exists(oddp,[2,4,6]);

fun 
	 forall (p, x::xs) = if p x = false then false
						  else if length xs = 0 then true
						       else forall (p,xs)
                   |forall (p,[]) = false;
forall(oddp,[]);
forall(oddp,[1,3]);

(*7*)
datatype 'a tree = Lf
				| Br of 'a  * 'a tree * 'a tree;
fun treeFilter(p,Lf) = Lf
	| treeFilter(p,Br(a,t1,t2)) = if p a = true then Br(SOME a,treeFilter(p,t1), treeFilter(p,t2))
	else Br(NONE,treeFilter(p,t1), treeFilter(p,t2)) ;

val tree2 = Br(2,Br(1,Lf,Lf),Br(3,Lf,Lf));
val tree6 = Br(6,Br(5,Lf,Lf),Br(7,Lf,Lf));
val tree4 = Br(4,tree2,tree6);
treeFilter(oddp,tree4);



(*fun sublists [ ] = [ [ ] ]
    | sublists (x::R) =
	let	    
		val S = sublists R
	in	    
		S @ map ( fn A => x::A) S
	end

fun sum [] = 0
	| sum (x::xs) = x + sum xs;

fun subsetSumOption(L,s) = let val M = sublists L
							   fun judge xs::M = let val xs_sum = sum xs
							   					 in if xs_sum = s
							   					     then SOME xs
							   					     else judge M
							   					 end
							in judge M
							end;*)

(*fun subset_sum ([] : int list, s : int)  =
      if s = 0 then SOME []
      else NONE
  | subset_sum (_ : int list, 0 : int) = SOME []
  | subset_sum (x::xs : int list, s : int) =
      let val ((w,wList),(wo,woList)) =  (subset_sum(xs, s-x), subset_sum(xs, s)) in
        case (w,wo) of
          (true,_) => SOME x::wList
        | (_,true) => SOME woList
        | (_,_) => NONE
      end*)

(*fun subset_sum ([] : int list, s : int) : bool * int list =
      if s = 0 then (true, [])
      else (false, [])
  | subset_sum (_ : int list, 0 : int) : bool * int list = (true, [])
  | subset_sum (x::xs : int list, s : int) : bool * int list =
      let val ((w,wList),(wo,woList)) =
      (subset_sum(xs, s-x), subset_sum(xs, s)) in
        case (w,wo) of
          (true,_) => (true, x::wList)
        | (_,true) => (true, woList)
        | (_,_) => (false, [])
      end*)

