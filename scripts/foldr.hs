----- Some example on foldr


--- Length
length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length xs

-- using foldr
length'' :: [a] -> Int
length'' = foldr (\_ n -> n+1) 0

--- Reverse
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- using foldr
reverse'' :: [a] -> [a]
reverse'' = foldr (\x xs -> xs ++ [x] ) []