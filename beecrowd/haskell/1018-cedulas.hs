module Main where

import Text.Printf

calculo :: [Double] -> Int -> [Int] -- recebe valores de notas e valor total
calculo [] _ = []
calculo (notas:notas_cauda) n = quantidade : calculo notas_cauda resto
    where 
        quantidade = floor (fromIntegral n / notas)
        resto = n - (quantidade * floor notas)


imprimir :: [Double] -> [Int] -> IO ()
imprimir [] [] = return ()
imprimir (ced_y:ys) (nmin_x:xs) = 
    do 
        printf "%d nota(s) de R$ %.0f,00\n" nmin_x ced_y
        imprimir ys xs 


main :: IO ()
main = do
    n <- readLn :: IO Int 
    print n 

    let cedulas = [100.0, 50.0, 20.0, 10.0, 5.0, 2.0, 1.0]
    let notas_min = calculo cedulas n 
    
    imprimir cedulas notas_min 
    
