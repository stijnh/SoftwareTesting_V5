module GS where

-- Exercise 1.9
mxmInt :: [Int] -> Int
mxmInt []     = error "empty list"
mxmInt [x]    = x
mxmInt (x:xs) = max x (mxmInt xs)

-- Exercise 1.10
removeFst :: Eq a => a -> [a] -> [a]
removeFst m []     = error "empty list"
removeFst m [x]    | x == m = []
                   | otherwise = [x]
removeFst m (x:xs) | x == m = xs
                   | otherwise = x : (removeFst m xs)

-- Exercise 1.13
count :: Char -> String -> Int
count c []     = 0
count c [x]    | c == x = 1
               | otherwise = 0
count c (x:xs) | c == x = 1 + (count c xs)
               | otherwise = (count c xs)

-- Exercise 1.14
blowup :: String -> String
blowup s = let
             rptChar :: Char -> Int -> String
             rptChar c n | n < 0 = error "n should be a positive integer"
                         | n == 0 = []
                         | otherwise = c : (rptChar c (n-1))

             blwpHlpr :: String -> Int -> String
             blwpHlpr [] n = []
             blwpHlpr [x] n = rptChar x n
             blwpHlpr (x:xs) n = (rptChar x n) ++ (blwpHlpr xs (n+1))
           in
             blwpHlpr s 1

-- Exercise 1.15
srtString :: [String] -> [String]
srtString [] = []
srtString [x] = [x]
srtString xs = let
                 mnmStr :: [String] -> String
                 mnmStr [] = error "empty list"
                 mnmStr [x] = x
                 mnmStr (x:xs) = min x (mnmStr xs)
               in
                 (mnmStr xs) : srtString (removeFst (mnmStr xs) xs)

-- Exercise 1.17
prefix :: String -> String -> Bool
prefix [] ys = True
prefix (x:xs) [] = False
prefix (x:xs) (y:ys) = (x == y) && (prefix xs ys)

substring :: String -> String -> Bool
substring [] ys = True
substring (x:xs) [] = False
substring xs (y:ys) = (prefix xs (y:ys)) || (substring xs ys)

-- Exercise 1.20
lengths :: [[a]] -> [Int]
lengths xs = map length xs

-- Exercise 1.21
sumLengths :: [[a]] -> Int
sumLengths xs = sum (lengths xs)



