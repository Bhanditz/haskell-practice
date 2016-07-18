-- List-length encoder, but only return the element when only one instance

import Problem10

data ListTerm a = Single a | Multiple Integer a
    deriving(Show)

modEncode :: (Eq a) => [a] -> [ListTerm a]
modEncode [] = []
modEncode (x:xs) = help 1 x xs
    where help 1 x [] = [Single x]
          help n x [] = [Multiple n x]
          help n x (y:ys)
              | x == y    = help (n+1) x ys
              | n == 1    = Single x : help 1 y ys
              | otherwise = Multiple n x : help 1 y ys

-- Uses previous problem and map to solve
mapEncode :: (Eq a) => [a] -> [ListTerm a]
mapEncode = map encHelp . encode
        where encHelp (1, x) = Single x
              encHelp (n, x) = Multiple n x
