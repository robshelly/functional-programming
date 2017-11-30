--- In class example

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (n:ns) = n + mySum ns

mySum2 :: Int -> Int
mySum2 1 = 1
mySum2 n = n + mySum2(n-1)

