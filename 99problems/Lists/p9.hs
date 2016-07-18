-- Pack consecutive duplicates of list elements into sublists

--TBH I have no idea what's going on

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = generate [] (x:xs)
    where generate [] (y:ys) = generate [y] ys
          generate z [] = [z]
          generate (a:as) (b:bs)
              | a == b = generate (b:a:as) (bs)
              | otherwise = (a:as):pack (b:bs)
