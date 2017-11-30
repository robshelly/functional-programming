--- List Comprehension Exerises

--- Exercise 1
-- Use list comp to find th sum of squares of all numbers from 1 to 100
sumOfSquares :: Int
sumOfSquares = sum [x^2 | x <- [1..100]]

--- Exercise 2
-- List all coors as an x, y grid
grid :: Int -> Int -> [(Int, Int)]
grid x y = [(x',y') | x' <- [0..x], y' <- [0..y]]  

--- Exercise 3
square :: Int -> [(Int, Int)]
square n =  [(x,y) | x <- [0..n], y <- [0..n], x /= y]

--Doesn't work
square2 :: Int -> [(Int, Int)]
square2 n = [(x,y) | (x,y) <- (grid n n), x /= y]

--- Exercise 4
myReplicate :: Int -> a -> [a]
myReplicate n x = [x | _ <- [1..n]]

--- Exercise 5
pyths :: Int -> [(Int,Int,Int)]
pyths z = [(x,y,z) | x <- [1..z], y <- [1..z] , z <- [1..z], x^2 + y^2 == z^2]



--- Exercise 6
-- first define factors
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n =  [x | x <- [1..n], sumFactors x == x]
  where sumFactors = sum . init . factors

------ Extras... not in exercise sheets
--- Exercise
find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']
