-- Rotate a list N elements to the right

push :: [a] -> Int -> [a]
push [] _ = []
push xs n = drop n xs ++ take n xs

--recursively
rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs 0 = xs
rotate (x:xs) n
    | n < 0 = rotate (last xs : init (x:xs)) $ n+1
    | n > 0 = rotate (xs ++ [x]) $ n-1
