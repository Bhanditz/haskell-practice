-- find last element in list
findLast :: [a] -> a
findLast [] = error "Empty list has no last element"
findLast [x] = x
findLast (x:xs) = findLast xs
