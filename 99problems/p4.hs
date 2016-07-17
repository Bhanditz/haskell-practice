-- Determine number of elements in a list

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
