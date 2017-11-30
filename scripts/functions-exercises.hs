--- Functions Exercises

-- List ofr easy testing of functions
list = ["a","b","c","d","e","f"]
l = ["a"]

--- Exercise 1
-- Function that splits even length lists in half
halve :: [a] -> ([a],[a])
halve xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)

halve2 :: [a] -> ([a],[a])
halve2 xs  = splitAt (((length xs) + 1) `div` 2) xs

--- Exercise 2
-- Function that returns the third element in a list using
-- a) head and tail
-- b) list indexing
-- c) pattern matching
thirdA :: [a] -> a
thirdA xs = head (tail (tail xs))

thirdB :: [a] -> a
thirdB xs = xs!!2

thirdC :: [a] -> a
thirdC (_:_:x:_) = x

--- Exercise 3
-- Safetail, map empy list to empty list instead of throwing error using
-- a) a conditional expression
-- b) guarded equations
-- c) pattern matching

safetailA :: [a] -> [a]
safetailA xs = if (null xs) then [] else drop 1 xs

safetailB :: [a] -> [a]
safetailB xs | null xs    = []
             | otherwise  = drop 1 xs

safetailC :: [a] -> [a]
safetailC [] = []
safetailC (_:xs) = xs

--- Exercise 4
-- Should how OR (||) can be defined using pattern matching in 4 ways
-- First do AND (&&) as exercise

myAnd1 :: Bool -> Bool -> Bool
myAnd1 True  True  = True
myAnd1 True  False = False
myAnd1 False True  = False
myAnd1 False False = False

myAnd2 :: Bool -> Bool -> Bool
myAnd2 False _  = False
myAnd2 _  False = False
myAnd2 True  True  = True

myAnd3 :: Bool -> Bool -> Bool
myAnd3 True   b = b
myAnd3 False  _ = False

-- Better
myAnd :: Bool -> Bool -> Bool
myAnd True  True  = True
myAnd _     _     = False


----- Now do OR
myOr1 :: Bool -> Bool -> Bool
myOr1 True  True  = True
myOr1 True  False = True
myOr1 False True  = True
myOr1 False False = False

myOr2 :: Bool -> Bool -> Bool
myOr2 _     True  = True
myOr2 True  _     = True
myOr2 False False = False

myOr3 :: Bool -> Bool -> Bool
myOr3 True  _     = True
myOr3 False b = be

myOr :: Bool -> Bool -> Bool
myOr False  False = False
myOr _      _     = True


--- Exercise 5
mult :: (Num a) => a -> a -> a -> a
mult = \x -> \y -> \z -> x * y * z

--- Exercise  6

luhnDouble :: Int -> Int
luhnDouble x = y - (if y > 9 then 9 else 0)
               where y = x * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn w x y z = if (((luhnDouble w) + x + (luhnDouble y) + z) `mod` 10) == 0
                  then True
                  else False
