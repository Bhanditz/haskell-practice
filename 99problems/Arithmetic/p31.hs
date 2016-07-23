-- Determine whether an integer is prime

isPrime :: Int -> Bool
isPrime n = primeList == [1, n]
    where primeList = filter (\x -> n `mod` x == 0) [1..n]
