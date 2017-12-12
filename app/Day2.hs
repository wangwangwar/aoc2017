module Main where

import LibDay2

main :: IO ()
main = do 
    print "Input the spreadsheet:"
    c <- getCheckSumV2
    print c

