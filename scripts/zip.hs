--- In class example
-- zip using recursion

myZip :: [a] -> [b] -> [(a,b)]
myZip [] [] 		= []
myZip (x:xs) (y:ys)	= [(x,y)] : myZip xs ys
