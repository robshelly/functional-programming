--- First Steps Exercises

-- Exercise 1: Parenthsesize the following
-- 1 (a)
-- 2^3*4    = (2^3)*4
-- 2*3+4*5  = (2*3)+(4*5)
-- 2+3*4^5  = 2+(3*(4^5))

-- Exercise 2: Correct the mistakes
-- N = a 'div' length xs
--   where
--     a = 10
--      xs = [1,2,3,4,5]

n = a `div` length xs
  where
    a = 10
    xs = [1,2,3,4,5]

-- Exercise 3: Define last with other functions.
last1 = head . reverse
last2 xs = head $ drop (length xs - 1) xs
last3 xs = xs !! (length xs -1)

-- Exercise 4: Define init with other functions
init1 xs = take (length xs -1) xs
init2 = reverse . tail . reverse