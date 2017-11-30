--- In class example

--- NOT WORKING... FIX


--- Insert
-- Insert a new element of any ordered type into a sorted list
insert :: Ord a => a -> [a] -> [a]
insert x [] 		= [x]
insert x (y:ys)
	| x <= y	= x : y : ys
	| otherwise	= y : insert x ys


--- Insertion sort
-- Sort a list by recursively inserting each element into a sorted list 
isort :: Ord a => [a] -> [a]
isort [] 	= []
isort (x:xs) 	= insert x (isort xs)
