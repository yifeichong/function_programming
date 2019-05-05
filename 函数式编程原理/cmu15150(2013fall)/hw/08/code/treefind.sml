structure TreeFind : TREEFIND = 
struct
  datatype 'a ntree = Empty
                    | Node of 'a * 'a ntree list
  type 'a tree = 'a ntree
(*Your code goes here *)
end
