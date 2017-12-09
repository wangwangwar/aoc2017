module Main where

import Lib

main :: IO ()
main = do 
    print "Input the digits:"
    s <- getLine
    print "Sum:"
    print $ digitSumV2 s
