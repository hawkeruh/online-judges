module Main where

import Text.Printf (printf)

average :: Double -> Double -> Double -> Double
average a b c = (a*2 + b*3 + c*5) / 10

main :: IO ()
main = do
    a <- readLn :: IO Double 
    b <- readLn :: IO Double 
    c <- readLn :: IO Double 
    printf "MEDIA = %.1f\n" (average a b c)

