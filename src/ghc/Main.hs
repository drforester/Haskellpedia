module Main where

import Fizzbuzz (fizzBuzz)

main :: IO ()
main = printAll $ map fizzBuzz [1..100]
       where
       printAll [] = return ()
       printAll (x:xs) = putStrLn x >> printAll xs
