module Main where 

import Text.Printf (printf)

salaryBonus :: Double -> Double -> Double 
salaryBonus salary valueProducts = (valueProducts * 0.15) + salary

main :: IO ()
main = do 
    name <- getLine
    salary <- readLn :: IO Double 
    valueProducts <- readLn :: IO Double
    printf "TOTAL = R$ %.2f\n" (salaryBonus salary valueProducts)

