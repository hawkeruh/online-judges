module Main where 

import Text.Printf (printf)
import System.IO (hSetBuffering, stdout, BufferMode (NoBuffering))

main :: IO ()
main = do 
    hSetBuffering stdout NoBuffering

    linha1 <- getLine 
    let [codigo1, qtd1, valor1] =  words linha1

    linha2 <- getLine 
    let [codigo2, qtd2, valor2] = words linha2 

    let total = read qtd1 * read valor1 + read qtd2 * read valor2 :: Double
    
    printf "VALOR A PAGAR: R$ %.2f\n" total