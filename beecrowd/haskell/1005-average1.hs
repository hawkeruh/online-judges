module Main where 

import Text.Printf(printf)

media :: Double -> Double -> Double 
media a b = ((a * 3.5) + (b * 7.5)) / 11.0

main :: IO ()
main = do 
    a <- readLn :: IO Double 
    b <- readLn :: IO Double 
    printf "MEDIA = %.5f\n" (media a b)