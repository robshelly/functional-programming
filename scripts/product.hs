--- In class example
-- product of numbers in a list

-- prod :: [Int] -> Int
-- functional overriding


prod :: Num a => [a] -> a
prod [] = 1
prod (n:ns) = n * product ns
