module Main where
import Text.Printf

main :: IO ()
main = do
    d_km <- readLn :: IO Int 
    printf "%d minutos\n" (d_km * 2)