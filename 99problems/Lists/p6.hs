-- Determine if a word is a palindrome

{-|

  HEAD  ---------TAIL------
  [a , ... , ... , ... , z]
  -------INIT--------- LAST

  Compare first and last letters, if they're the same, return TRUE
    if they're different, return FALSE
  The result is Bool && Bool && ... && Bool
    i.e. (racecar) --> (True && True && True && True) --> True
-}

palindrome :: (Eq a) => [a] -> Bool
palindrome [] = True
palindrome [_] = True
palindrome z@(x:xs) = (head z) == (last z) && (palindrome $ init xs)
