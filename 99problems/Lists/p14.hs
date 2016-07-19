-- Duplicate elements in a list

duplicate :: [a] -> [a]
duplicate [] = []
duplicate (x:xs) = x : (x : duplicate(xs))

-- With list constructors
dupList list = concat [[x,x] | x <- list]
