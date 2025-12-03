module Main where 

produto :: Int -> Int -> Int 
produto x y = x * y

main :: IO ()
main = do 
    x <- readLn :: IO Int 
    y <- readLn :: IO Int 
    putStrLn ("PROD = " ++ show (produto x y))
