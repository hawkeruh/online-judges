module Main where
import Text.Printf

combustivel :: Int -> Int -> Double 
combustivel tempo media = distancia / 12 
    where 
        distancia = fromIntegral tempo * fromIntegral media 

main :: IO ()
main = do
    tempo <- readLn :: IO Int 
    vMedia <- readLn :: IO Int 

    printf "%.3f\n" (combustivel tempo vMedia)