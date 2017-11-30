--- Recusion Exercises

--- Exercise 1
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown(n-1)


--- Exercise 2
exponention :: Int -> Int -> Int
exponention 0 0 = error "Undefined... or 1. Depends who you ask!"
exponention _ 0 = 1
exponention 0 _ = 0
exponention x y = x * exponention x (y-1)

--- Exercise
--- init recursively
myInit :: [a] -> [a]
myInit [] = error "Empty list"
myInit [x] = []
myInit (x:xs) = x : myInit xs



--- Exercies 4
-- 4 (a) (i)
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (False:_) = False
myAnd (True:xs) = myAnd xs

-- 4 (a) (ii)
myOr :: [Bool] -> Bool
myOr [] = False
myOr (True:_) = True
myOr (False:xs) = myOr xs 

-- 4 (b)
myConcat :: [[a]] -> [a]
myConcat []     = []
myConcat (x:xs) = x ++ myConcat xs

-- 4 (c)
myReplicate :: Int -> a -> [a]
myReplicate 0 x = []
myReplicate n x = x : myReplicate (n-1) x

-- 4 (d)
myNth :: [a] -> Int -> a
myNth [] _  = error "Index out of bounds"
myNth xs 0  = head xs
myNth xs n = myNth xs (n-1)

-- 4 (e)
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs)
  | x == y    = True
  | otherwise = myElem y xs

--- Exercise 5
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

--- Exercise 6
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

msort :: Ord a => [a] -> [a]
msort []  = []
msort [x] = [x]
msort xs = merge (msort l) (msort r)
  where (l, r) = halve xs

--- Exercise 7
--- User five step process to constuct library functions for teh following
-- 7 (a) sum

-- Step 1: Define Type
--sum :: [Int] -> Int

-- Step 2: Enumerate Cases
--sum [] = 
--sum (x:xs) =

-- Step 3: Define the Base Case
--sum [] = 0
--sum (x:xs) = 

--Step 4: Define other cases
--sum [] = 0
--sum (x:xs) = x + sum xs

--Step 5: Generalise and Simplify
mySum :: Num a => [a] -> a
mySum [] = 0
mySum (n:ns) = n + mySum ns

-- 7 (b) take

--- Step 1
--myTake :: Int -> [a] -> [a]

--- Step 2
--myTake 0 [] =
--myTake n [] = 
--myTake 0 (x:xs) = 
--myTake n (x:xs) = 

--- Step 3
--myTake 0 [] = []
--myTake n [] = []
--myTake 0 (x:xs) = []

--- Step 4
--myTake n (x:xs) = x : myTake (n-1) xs

--- Step 5
myTake :: Integral b => b -> [a] -> [a]
myTake _ [] = []
myTake 0 (x:xs) = []
myTake n (x:xs) = x : myTake (n-1) xs


-- 7(c) last
-- Step 1
-- myLast :: [a] -> and

-- Step 2
-- myLast []  =
-- myLast [x] = 
-- myLast (x:xs) = 

-- Step 3
-- myLast [] = error "Empty List"
-- myLast [x] = x


-- Step 4
-- myLast (x:xs) = myLast xs

-- Step 5
myLast :: [a] -> a
myLast []     = error "Empty List"
myLast [x]    = x
myLast (x:xs) = myLast xs


--- tail
--- Step 1
-- myTail :: [a] -> a

--- Step 2
-- myTail [x] =
-- myTail (x:xs) =

--- Step 3
-- myTail [x] = x

--- Step 4
-- myTail (x:xs) = myTail xs

--- Step 5
myTail :: [a] -> a
myTail [x] = x
myTail (x:xs) = myTail xs

