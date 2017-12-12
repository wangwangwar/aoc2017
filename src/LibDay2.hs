module LibDay2 (
    getCheckSum
    ) where

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