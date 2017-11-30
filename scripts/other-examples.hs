--- Some in-class examples

-- List for testing
list :: [Int]
list = [2,4,5,6,8,9,10,12]


-- Average of a list on integers
myAverage :: [Int] -> Int
myAverage xs = sum xs `div` length xs

-- All elements in a list smaller than a given element
smallerThan :: [Int] -> Int -> [Int]
smallerThan xs x = [y | y <- xs, y < x]

-- All elements in a list larger than a given element
largerThan :: [Int] -> Int -> [Int]
largerThan xs x = [y | y <- xs, y > x]

-- Factors of a number
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

-- Check if a number of prime
prime :: Int -> Bool
prime n = factors n == [1,n]

-- Return list of all primes up to a limit
primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]
