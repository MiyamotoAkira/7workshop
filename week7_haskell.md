
High Order Functions
map (\x -> x * x) [1, 2, 3]

Currying
let prod x y = x * y
prod 3 4
:t prod

Defining our own types
cards.hs

Recursive types
let (Leaf value) = leaf
value
let tree = Children[Leaf 1, Children [Leaf 2, Leaf 3]]
let (Children ch) = tree
let (fst:tail) = ch

class
Different than on OOP. You instantiate Types. Classes like protocols on Clojure

monads
three elements:
type constructor -> Holds function
return function -> wrap function
bind function -> unwrap function

three rules:
use type constructor to create monad
able to unwrap and wrap without loosing information -> monad >>= return = monad
Nesting bind functions same as calling them sequentially -> (m >>= f) >>= g = m >>= (\x -> f x >>= g)

drunken pirate

IO monad
Maybe monad
