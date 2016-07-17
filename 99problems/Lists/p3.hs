-- Find Nth element in a list, with index starting at 1

{-|
  An example of using pipelines

  dataAt (x:xs) y | y < 1 = x reads:
    "if y<=0, then ((x:xs),y) --> x"
-}

dataAt :: [a] -> Int -> a
dataAt (x:_) 1 = x
dataAt [] _ = error "This list is empty"
dataAt (_:xs) y
    | y < 1 = error "Index too low"
    | otherwise = dataAt xs (y - 1)
