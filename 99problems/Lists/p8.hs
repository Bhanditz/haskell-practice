-- Eliminate consecutive duplicates of elements in a List
{-|

  aabccd --> abcd
  | a : abccd
    | a : bccd --> a
      | b : ccd --> b
        | c : cd
          | c : d --> c
            |d : [] --> d
-}


compress :: (Eq a) => [a] -> [a]
compress [] = []
compress (y:[]) = [y]
compress (x:xs)
    | x == (head xs) = compress xs
    | otherwise = x:(compress xs)
