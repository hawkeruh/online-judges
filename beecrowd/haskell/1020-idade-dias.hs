module Main where

import Text.Printf

converter :: Int -> [Int] -> [Int]
converter _ [] = []
converter n (x:xs) = tempo : converter resto xs 
    where 
        tempo = div n x
        resto = n - (tempo * x) 

main :: IO ()
main = do
    n <- readLn :: IO Int 

    let conversor = [365, 30, 1]
    let [a, m, d] = converter n conversor
    
    printf "%d ano(s)\n" a 
    printf "%d mes(es)\n" m
    printf "%d dia(s)\n" d
    