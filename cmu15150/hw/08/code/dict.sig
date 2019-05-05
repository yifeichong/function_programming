signature DICT =
sig

  structure Key : ORDERED

  type 'v dict

  val empty : 'v dict

  val insert : 'v dict -> (Key.t * 'v) -> 'v dict
  val lookup : 'v dict -> Key.t -> 'v option
  val remove : 'v dict -> Key.t -> 'v dict
  val map : ('u -> 'v) -> 'u dict -> 'v dict
  val filter : ('v -> bool) -> 'v dict -> 'v dict

end
