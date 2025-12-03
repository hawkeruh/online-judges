module Main where

import Text.Printf (printf)
import System.IO (hSetBuffering, stdout, BufferMode(NoBuffering))

formula :: Double -> Double -> Double 
formula a b = (a + b + abs(a - b)) / 2 

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    
    linha <- getLine
    let [a, b, c] = map read (words linha) :: [Double]

    let passo1 = formula a b
    let passo2 = formula passo1 c
    printf "%.0f eh o maior\n" passo2