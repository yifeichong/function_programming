(*1   s*)
fun reverse[] = []
	| reverse (n::ns) = (reverse ns) @ [n:int];

reverse[1,2,3,4,5];

fun revAppend ([],ys) = ys
	| revAppend (x::xs,ys) = revAppend(xs,x::ys);

fun reverse' xs = revAppend(xs,[]);

reverse'[1,2,3,4,5];


(*2   *)
fun interleave([],[]) = []
	| interleave(x::nx,y::ny) = [x,y] @ interleave(nx,ny)
	| interleave(x::nx,[]) = [x] @ nx
	| interleave([],y::ny) = [y] @ ny;

interleave([1,3,5,7],[2,4,6]);

(*3   *)
datatype 'a tree = Lf
				| Br of 'a  * 'a tree * 'a tree;

fun balpre [] = Lf
	| balpre(x::xs) = 
		let val k = length xs div 2
		in Br(x,balpre(List.take(xs,k)),balpre(List.drop(xs,k)))
		end;

fun preorder Lf = []
	| preorder(Br(v,t1,t2)) = [v] @ preorder t1 @ preorder t2;

fun balin [] = Lf
	| balin xs = 
		let val k = length xs div 2
			val y::ys = List.drop(xs,k)
		in Br(y,balin(List.take(xs,k)),balin ys)
		end;

fun inorder Lf = []
	| inorder(Br(v,t1,t2)) = inorder t1 @ [v] @ inorder t2;

balin[1,2,3,4,5,6,7];

(*4 *)

fun revT Lf = Lf
	| revT(Br(v,t1,t2)) =  Br(v,revT(t2),revT(t1));

val tree2 = Br(2,Br(1,Lf,Lf),Br(3,Lf,Lf));
val tree6 = Br(6,Br(5,Lf,Lf),Br(7,Lf,Lf));
val tree4 = Br(4,tree2,tree6);

revT tree4;

(*5 *)

(*fun sortedTree(Lf) = True
	|sortedTree(Br(a,t1,t2)) = 
		(case )*)

fun binarySearch(Lf,b) = false
	| binarySearch(Br(a,t1,t2),b) = 
		(case Int.compare(a,b) of
		GREATER => binarySearch(t1,b)
		|EQUAL => true
		|LESS => binarySearch(t2,b));

binarySearch(tree4,1);
binarySearch(tree4,8);
