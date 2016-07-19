-- extract a slice from a list
-- slice(L, i, k) = [L_i, ...... , L_k]

--drop and take are the real heroes

slice :: [a] -> Int -> Int -> [a]
slice xs n m = drop (n-1) $ take m xs
