-- Remove every Nth element from a list

{-|

  ------take (n-1)------
  [1, 2, ... , ... , n-1, n, n+1, ..., ...]
                          ----drop n-------

-}

dropN :: [a] -> Int -> [a]
dropN [] _ = []
dropN xs n = take (n-1) xs ++ dropN (drop n xs) n


-- With zip and list comprehension

dropNz :: [a] -> Int -> [a]
dropNz xs n = [i | (i, c) <- (zip xs [1,2..]), (mod c n) /= 0]
