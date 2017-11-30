--- In class examples
--- Drop using recursion in the five step process

--- Step 1: Define the type
--myDrop :: Int -> [a] -> a

--- Step 2: Enumerate the Cases
--myDrop 0 [] =
--myDrop n [] =
--myDrop 0 (x:xs) =
--myDrop n (x:xs) =

--- Step 3: Define Base Case
--myDrop 0 [] = []
--myDrop n [] = []
--myDrop 0 (x:xs) = x:xs

--- Step 4: Define Other Cases
--myDrop n (x:xs) = myDrop (n-1) xs


--- Step 5: Generalise and Simplify
myDrop :: Integral b => b -> [a] -> [a]
myDrop 0 [] = []
myDrop 0 (x:xs) = x:xs
myDrop n [] = []
myDrop n (x:xs) = myDrop (n-1) xs

