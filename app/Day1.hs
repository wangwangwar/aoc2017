module Main where

import LibDay1

main :: IO ()
main = do 
    print "Input the digits:"
    s <- getLine
    print "Sum:"
    print $ digitSumV2 s
