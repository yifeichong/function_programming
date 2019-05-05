use "lib.sml";

(* ---------------------------------------------------------------------- *)
(* SECTION 2 *)

fun zip (l1 : int list, l2 : string list) : (int * string) list =
    raise Fail "unimplemented"

fun unzip (l : (int * string) list) : int list * string list =
    raise Fail "unimplemented"

(* ---------------------------------------------------------------------- *)
(* SECTION 3 *)

fun runWith (x : int, L : int list) : int list * int list =
    raise Fail "unimplemented"

fun lookSay (l : int list) : (int * int) list =
    raise Fail "unimplemented"

fun flatten (l : (int * int) list) : int list = 
    raise Fail "unimplemented"

(* ---------------------------------------------------------------------- *)
(* SECTION 4 *)

fun prefixSum (l : int list) : int list =
    raise Fail "unimplemented"

(* uncomment this line and fill it in when you decide on the type *)
(* fun prefixSumHelp (l : int list, ...) : int list = ... *)

fun prefixSumFast (l : int list) : int list =
    raise Fail "unimplemented"


(* ---------------------------------------------------------------------- *)
(* SECTION 5 *)

fun sublist (i : int, j : int, l : int list) : int list =
    raise Fail "unimplemented"

(* ---------------------------------------------------------------------- *)
(* SECTION 6 *)

fun subsetSum (l : int list, s : int) : bool =
    raise Fail "unimplemented"

fun subsetSumCert (l : int list, s : int) : bool * int list =
    raise Fail "unimplemented"
