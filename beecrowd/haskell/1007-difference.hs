module Main where 

import Text.Printf (printf)

difference :: Int -> Int -> Int -> Int -> Int
difference a b c d = a * b - c * d 

main :: IO ()
main = do 
    a <- readLn :: IO Int 
    b <- readLn :: IO Int 
    c <- readLn :: IO Int 
    d <- readLn :: IO Int
    printf "DIFERENCA = %d\n" (difference a b c d)

