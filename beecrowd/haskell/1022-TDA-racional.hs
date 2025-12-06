module Main where

import System.IO
import Text.Printf

mdc :: Integer -> Integer -> Integer
mdc a 0 = a
mdc a b = mdc b (mod a b)

operacao :: Char -> (Integer,Integer,Integer,Integer) -> (Integer, Integer)
operacao op (n1, d1, n2, d2) = 
    case op of 
        '+' -> (n1 * d2 + n2 * d1, d1 * d2) 
        '-' -> (n1 * d2 - n2 * d1, d1 * d2 )
        '*' -> (n1 * n2, d1 * d2) 
        '/' -> (n1 * d2, n2 * d1)

simplificar :: (Integer, Integer) -> (Integer, Integer)
simplificar (num, den) = 
    let divisor = mdc (abs num) (abs den)
        numSimp = div num divisor
        denSimp = div (abs den) divisor
    in if den < 0
       then (-numSimp, denSimp)
       else (numSimp, denSimp)

processar :: Int -> IO ()
processar casos
    | casos <= 0 = return ()
    | otherwise = do
        linha <- getLine 
        let [sn1, _ , sd1, sop, sn2, _ , sd2] = words linha 
            (n1, d1, n2, d2) = (read sn1, read sd1, read sn2, read sd2) :: (Integer,Integer,Integer,Integer)
            op = head sop
            (resultadoN, resultadoD) = operacao op (n1, d1, n2, d2)
            (simplesN, simplesD) = simplificar (resultadoN, resultadoD)

        printf "%d/%d = %d/%d\n" resultadoN resultadoD simplesN simplesD
        processar (casos - 1)

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    casos <- readLn :: IO Int 

    processar casos 
