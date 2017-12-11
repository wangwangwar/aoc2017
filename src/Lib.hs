module Lib (
    digitSum,
    digitSumV2
    ) where

import Data.Char

digitSum :: String -> Int
digitSum s = sum $ _checkInts ints
    where ints = map digitToInt (mappend s [head s])

_checkInts :: [Int] -> [Int]
_checkInts []  = []
_checkInts [_] = []
_checkInts (a:b:xs) =
    if a == b then a : _checkInts (b : xs) else _checkInts (b : xs)


digitSumV2 :: String -> Int
digitSumV2 s = sum (_checkIntsV2 0 ints) * 2
    where ints = map digitToInt (mappend s [head s])

_checkIntsV2 :: Int -> [Int] -> [Int]
_checkIntsV2 _ []  = []
_checkIntsV2 _ [_] = []
_checkIntsV2 n ints
    | n >= length ints `div` 2        = []
    | ints !! n == ints !! (n + step) = ints !! n : _checkIntsV2 (n + 1) ints
    | otherwise                       = _checkIntsV2 (n + 1) ints
    where step = length ints `div` 2
