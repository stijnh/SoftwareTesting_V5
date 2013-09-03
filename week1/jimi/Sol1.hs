module Sol1 where

import GS

-- Exercise 1.9
mxmInt :: [Int] -> Int
mxmInt [] = error "empty list"
mxmInt [x] = x
mxmInt (x : xs) = max x (mxmInt xs)

-- Exercise 1.10
removeFst :: Integer -> [Integer] -> [Integer]
removeFst m [] = []
removeFst m (x : xs)
  | x == m = xs
  | otherwise = x : (removeFst m xs)

-- Exercise 1.13
count :: Char -> String -> Int
count c [] = 0
count c (x : xs)
  | c == x = 1 + (count c xs)
  | otherwise = (count c xs)

-- Exercise 1.14 a
rptChar :: Char -> Int -> String
rptChar c n
  | n < 0 = error "n should be a positive integer"
  | n == 0 = []
  | otherwise = c : (rptChar c (n - 1))

blwpHlpr :: String -> Int -> String
blwpHlpr [] n = []
blwpHlpr (x : xs) n = (rptChar x n) ++ (blwpHlpr xs (n + 1))

blowup :: String -> String
blowup s = blwpHlpr s 1

--Exercise 1.14 b
blowup :: [a] -> [a]
blowup xs = blowup' xs 1
    where blowup' [] _ = []
          blowup' (x:xs) n = take n (repeat x) ++ blowup' xs (n+1)

-- Exercise 1.15
srtString :: [String] -> [String]
srtString [] = []
srtString (x : xs) =
  (srtString (filter (<= x) xs)) ++
  [x] ++
  (srtString (filter (> x) xs))

-- Exercise 1.17
substring :: String -> String -> Bool
substring (x : xs) [] = False
substring xs (y : ys) = (prefix xs (y : ys)) || (substring xs ys)

-- Exercise 1.20
lengths :: [[a]] -> [Int]
lengths xs = map length xs

-- Exercise 1.21
sumLengths :: [[a]] -> Int
sumLengths xs = sum (lengths xs)

