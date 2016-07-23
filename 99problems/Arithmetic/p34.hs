-- Construct Euler's totient function, which gives count of all numbers
--    coprime to the input

totient :: Int -> Int
totient 1 = 1
totient n = length $ filter (\x -> gcd x n == 1) [1..n]
