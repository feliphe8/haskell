module Aula04 where

{-*

HIGH-ORDER FUNCTIONS: Em Haskell as funcoes
sao tratadas como valores comuns. Ou seja,
sao passadas via parametro ou retornadas.

CURRYING: Eh o ato de chamar funcao
com menos parametros do que definido. O resultado
disso eh uma funcao com os parametros restantes.

*-}
somar :: Int -> (Int -> Int)
somar x = \y -> x+y

dobro :: Int -> Int
dobro x = 2*x

func :: (Int -> Int) -> Int
func f = 2 + f 10

somarTres :: Int -> Int -> Int -> Int
somarTres x y z = x+y+z

elimNeg :: [Int] -> [Int]
elimNeg xs = filter (\x -> x>=0) xs

