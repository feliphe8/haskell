module Aula06 where

data Objeto = Caneta | Lapis | Borracha deriving Eq

data Bolsa a = Nada | UmaCoisa a 
             | DuasCoisas a a  deriving Show

instance (Eq a) => Eq (Bolsa a) where
    Nada == Nada = True
    (UmaCoisa x) == (UmaCoisa y) = x == y
    (DuasCoisas x y) == (DuasCoisas z w) = (x == z && y == w) || (x == w && y == z)
    _ == _ = False

-- PARA FAZER UM TYPECLASS EH NECESSARIO DEFINIR UMA FUNCAO
-- QUE TERA SEU COMPORTAMENTO DEPENDENTE DAS INSTANCIAS.
-- NO CASO, SimNao Int tera que ter uma funcao
-- resposta :: Int -> Bool
class SimNao a where
    resposta :: a -> Bool
    
instance SimNao Int where
    resposta 0 = False
    resposta _ = True

instance SimNao Bool where
    resposta = id

instance SimNao Char where
    resposta x
        | elem x "AEIOUaeiou" = True
        | otherwise = False

func :: (Show a, SimNao a) => a -> String
func x = (reverse . show . resposta) x

foo :: (Show a) => a -> Bool
foo y = "Ola" == (show y)
