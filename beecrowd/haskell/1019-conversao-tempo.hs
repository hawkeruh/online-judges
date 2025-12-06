module Main where

import Text.Printf

-- numero a converter, numeros a dividir -> saida: horas, minutos e segundos
converter :: Int -> [Int] -> [Int]
converter _ [] = []
converter n (x:xs) = tempo : converter resto xs 
    where 
        tempo = div n x
        resto = n - (tempo * x) 

main :: IO ()
main = do
    n <- readLn :: IO Int 

    let conversor = [3600, 60, 1]
    let [hh, mm, ss] = converter n conversor
    
    printf "%d:%d:%d\n" hh mm ss 
    