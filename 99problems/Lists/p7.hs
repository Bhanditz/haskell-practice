-- Flatten a List structure

{-|
  Define a new type called NestList, which is either an element or a
  List of NestList types (note this is a recursive definition)
-}
data NestList a = Elem a | List [NestList a]

myFlat :: NestList a -> [a]
myFlat (List []) = []
myFlat (Elem x) = [x]
myFlat (List (x:xs)) = myFlat x ++ myFlat (List xs)
