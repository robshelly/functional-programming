--- Exercise Higher Order Functions Exercises

--- Exercise 1: Show how the list comprehension
--- [f x | x <- xs p x]
--- can be re-expressed usning map and filter

-- map defintion
-- map :: (a -> b) -> [a] -> [b]
-- map f xs [f x | x <- xs]
-- or using recursion
-- map f (x:xs) =  f x : map f xs

-- filter defintion
-- filter :: (a -> b) -> [a] -> [b]
-- filter p xs [x | x <- xs, p x]
-- or using recursion
-- filter p (x:xs)
--   | p x        = x : filter p xs
--   | otherwise  = filter p xs

--- [f x | x <- xs p x]

filtermap :: (a -> b) -> (a -> Bool) -> [a] -> [b]
filtermap f p = map f . filter p

--- Exercise 2
-- Define the following

all :: (a -> Bool) -> [Bool] ->  Bool
all p xs = and [p x | x <- xs]

any :: (a -> Bool) -> [Bool] -> Bool
any p xs = or  [p x | x <- xs]

takeWhile :: (a -> Bool) -> [a] ->[a]
takeWhile p [] = []
takeWhile p (x:xs)
  | p x       = x : takeWhile p xs
  | otherwise = []

dropWhilw :: (a -> Bool) -> [a] -> [a]
dropWhile p [] = []
dropWhile p (x:xs)
  | p x       = dropWhile p xs
  | otherwise = x:xs

--- Exercise 3

-- Redefine using foldr
-- map
map' f = foldr (\x xs -> f x : xs) []

-- filter 
filter p = filter (\x xs -> if p x then x:xs else xs) []
