-- split a list into two parts with a given length

--super easy with take and drop 

split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)
