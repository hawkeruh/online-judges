module Main where

import Text.Printf

distancia :: (Float, Float) -> (Float, Float) -> Float
distancia (x1, y1) (x2, y2) = sqrt ((x2 - x1)**2 + (y2 - y1)**2)

main :: IO ()
main = do
    linha1 <- getLine 
    linha2 <- getLine 

    let [x1, y1] = map read (words linha1) :: [Float]
    let [x2, y2] = map read (words linha2) :: [Float]
    let p1 = (x1, y1)
    let p2 = (x2, y2)

    printf "%.4f\n" (distancia p1 p2)