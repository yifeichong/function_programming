functor DictSet (Dict : DICT) : SET =
struct
	exception NotInSet
	exception Unimplemented

	(* replace unit with the correct types here *)
	type elem = unit
	type set = unit

	fun empty() = raise Unimplemented

	fun void S = raise Unimplemented

	fun find e S = raise Unimplemented
	fun insert e S = raise Unimplemented
	fun delete e S = raise Unimplemented
	
	fun union s1 s2 = raise Unimplemented
	fun intersection s1 s2 = raise Unimplemented
	fun difference s1 s2 = raise Unimplemented

	fun toList s = raise Unimplemented
	fun fromList L = raise Unimplemented

end
