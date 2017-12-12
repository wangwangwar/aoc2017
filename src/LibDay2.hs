module LibDay2 (
    getCheckSum,
    getCheckSumV2
    ) where

import Data.Maybe

getCheckSum :: IO Integer
getCheckSum = fmap checkSum getLinesOfNums

checkSum :: [[Integer]] -> Integer
checkSum = sum . map lineCheckSum

getLinesOfNums :: IO [[Integer]]
getLinesOfNums = linesOfNums
    where 
        linesOfString = fmap lines getContents
        linesOfWords = fmap (map words) linesOfString
        linesOfNums = fmap (map (map read)) linesOfWords

lineCheckSum :: [Integer] -> Integer
lineCheckSum xs = maximum xs - minimum xs

-- More

getCheckSumV2 :: IO Integer
getCheckSumV2 = fmap checkSumV2 getLinesOfNums

checkSumV2 :: [[Integer]] -> Integer
checkSumV2 lst = sum (map sum (map lineCheckSumV2 lst))

lineCheckSumV2 :: [Integer] -> Maybe Integer
lineCheckSumV2 xs = listToMaybe lst
    where lst = [x `div` y | x <- xs, y <- xs, x /= y, x `mod` y == 0]