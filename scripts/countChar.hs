--- In class example
-- Count the number of times a prticluar character appears in a string

count :: Char -> [Char] -> Int
count x xs = length [i | (x',i) <- zip xs [0..], x ==x']


count2 :: Char -> [Char] -> Int
count2 x xs = length[x' | x' <- xs, x ==x']
