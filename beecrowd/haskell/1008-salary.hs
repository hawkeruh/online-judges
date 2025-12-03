module Main where 

import Text.Printf (printf)

salary :: Int -> Double -> Double
salary workedHours perHour = fromIntegral workedHours * perHour

main :: IO ()
main = do
    number <- readLn :: IO Int
    workedHours <- readLn :: IO Int 
    perHour <- readLn :: IO Double 
    printf "NUMBER = %d\n" number
    printf "SALARY = U$ %.2f\n" (salary workedHours perHour)