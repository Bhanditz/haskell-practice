-- Find the greatest common divisor of two numbers with Euclid's Algorithm

myGCD :: Int -> Int -> Int
myGCD a b
    | b == 0 = abs a
    | otherwise = myGCD b (a `mod` b)

-- Can also determine if two numbers are coprime
coprime a b = myGCD a b == 1
