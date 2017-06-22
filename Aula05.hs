module Aula05 where

-- FUNCOES FEITAS AQUI POSSUEM UM CORPO
-- OU SEJA, POSSUEM UMA DEFINICAO

-- EXPRESSAO LAMBDA: FUNCAO SEM CORPO.
-- REPRESENTA UM VALOR DO TIPO FUNCAO

-- CURRYING: Eh o ato de chamar funcao
--com menos parametros do que definido. O resultado
--disso eh uma funcao com os parametros restantes.

-- HIGH-ORDER FUNCTIONS: Em Haskell as funcoes
-- sao tratadas como valores comuns. Ou seja,
-- sao passadas via parametro ou retornadas.

func :: String-> Int -> String
func x y = x ++ show y

ehImpar :: Int -> Int -> Int
ehImpar cont x
    | odd x = cont + 1
    | otherwise = cont
    
    
dobro :: Int -> Int
dobro x = x*2

func :: [Int] -> [Int]
func xs = map dobro xs

somarTres :: Int -> Int -> Int -> Int
somarTres x y z = x+y+z

    

ehVogal :: Int -> Char -> Int
ehVogal cont letra
    | elem letra "AEIOUaeiou" = cont + 1
    | otherwise = cont 

