module Main where 

import Text.Printf (printf)
import System.IO (hSetBuffering, stdout, BufferMode (NoBuffering))

calculo :: Double -> Double 
calculo x = (4.0 / 3.0) * pi * x^^3
    where 
        pi = 3.14159

main :: IO ()
main = do 
    hSetBuffering stdout NoBuffering

    valor <- readLn :: IO Double 

    printf "VOLUME = %.3f\n" (calculo valor) 