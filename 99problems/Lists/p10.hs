-- Run-length encoding of a list

encode :: (Eq a) => [a] -> [(Integer, a)]
encode [] = []
encode (x:xs) = encode' 1 x xs
    where encode' n x [] = [(n, x)]
          encode' n x (y:ys)
              | x == y    = encode' (n+1) x ys
              | otherwise = (n, x) : encode' 1 y ys

{-|

Takes a list of something, returns a list containing (Int, a)

Look at x:xs and perform a counting/comparison function, encode'
    n x [] --> [(n,x)]  When the comparison is against an empty list
    n x (y:ys)
        if values are equal, up the count and keep going
        if values not equal, move onto the next thing we need to count

-}
