--- Sorted example from class
-- List comp notes

--- Return a list of pairs from a list in the following format:
--[(x1,x2), (x2,x3),(x3,x4)...(xn-1,xn)]
pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

--- Check if a list is sorted
sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x,y) <- pairs xs]

