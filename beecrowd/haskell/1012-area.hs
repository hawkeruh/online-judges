module Main where

import Text.Printf (printf)
import System.IO (hSetBuffering, stdout, BufferMode(NoBuffering))

triangulo :: Double -> Double -> Double 
triangulo a c = (a * c) / 2

circulo :: Double -> Double
circulo c = 3.14159 * c * c

trapezio :: Double -> Double -> Double -> Double
trapezio a b c = ((a + b) * c) / 2

quadrado :: Double -> Double
quadrado b = b * b

retangulo :: Double -> Double -> Double
retangulo a b = a * b

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    
    linha <- getLine
    let [a, b, c] = map read (words linha) :: [Double]

    printf "TRIANGULO: %.3f\n" (triangulo a c)
    printf "CIRCULO: %.3f\n" (circulo c)
    printf "TRAPEZIO: %.3f\n" (trapezio a b c)
    printf "QUADRADO: %.3f\n" (quadrado b)
    printf "RETANGULO: %.3f\n" (retangulo a b)



