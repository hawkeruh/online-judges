module Main where 

import Text.Printf (printf)

formula :: Double -> Double
formula r = n * r^2
  where 
    n = 3.14159

main :: IO ()
main = do
    r <- readLn :: IO Double
    printf "A=%.4f\n" (formula r)