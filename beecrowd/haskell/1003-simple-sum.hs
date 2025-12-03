module Main where 

soma :: Int -> Int -> Int 
soma x y = x + y 

main :: IO ()
main = do 
    str1 <- getLine 
    str2 <- getLine
    let x = read str1 :: Int 
    let y = read str2 :: Int
    let total = soma x y
    putStrLn ("SOMA = " ++ show total)
