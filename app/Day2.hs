module Main where

import LibDay2

main :: IO ()
main = do 
    print "Input the spreadsheet:"
    c <- getCheckSum
    print c

