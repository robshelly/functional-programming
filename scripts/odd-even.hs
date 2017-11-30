--- In class example
-- Even nums

myEven :: Int -> Bool
myEven n = (n `mod` 2 == 0)

myOdd :: Int -> Bool
myOdd = not . myEven