-- Replicate elements in list

{-|
  Monads consist of
    1. Type constructor m
    2. Function         return :: a --> m a
    3. Operator         m a >>= (a --> ma) --> m b
        value >>= function evalutes to value
-}

import Control.Monad

repli :: (Enum a) => [a] -> Int -> [a]
repli xs n = xs >>= (\x -> take n $ [x,x..])
