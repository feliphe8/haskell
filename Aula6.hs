module Aula6 where

import Data.Monoid

-- Kind 1, nao tem variaveis.

-- Typeclass: Eh uma estrutura que define o comportamento
-- de varios tipos. Exemplos: Show, Ord, Eq, ...
-- Baseando-se no tipo Dia e usando deriving,
-- o Haskell cria automaticamente a instancia
-- Show Dia.
data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo

-- Variavel de tipo (a)
-- Posso ter um Coisa Dia
-- Coisa eh um tipo que possui um TYPE VARIABLE 
-- a e possui tres value constructors
-- o 1) UmaCoisa: Possui um campo do tipo a
-- 2) DuasCoisas: Possui dois campos do tipo a
-- 3) Nada: Sem campos

-- POLIMORFISMO PARAMETRICO: A partir
-- de um type variable a, eh possivel
-- montar estrutura especifica para
-- cada a fixado.
-- Exemplo: Coisa String, Coisa Int, ...
-- [String], [Int], ...
--data Coisa a = UmaCoisa a | DuasCoisas a a | Nada deriving Show
-- APAGANDO o deriving Show, podemos criar uma instancia
-- Show Dia diferente.

data Numero = Zero | Um

-- LISTA
--data Bolsa a = Nada | Vazia | UmaCoisa a | DuasCoisas a a deriving Show
data Bolsa a = Nada | UmaCoisa a | DuasCoisas aa deriving Show

instance (Eq a) => Eq (Bolsa a) where
    Vazia == Vazia = True
    (UmaCoisa x) == (UmaCoisa y) = x == y
    (DuasCoisas x y) == (DuasCoisas z w) = (x == z && y == w) || (x == w && y == z)
    _ == _ = False

instance Show Dia where
    -- show :: a -> String
    -- Como aqui dentro eh Show Dia temos
    -- show :: Dia -> String
    show Segunda = "Segundo dia - aff"
    show Terca = "Terceiro dia - aff"
    show Quarta = "Dia de futebol "
    show Quinta = "Quase la!"
    show Sexta = "Dia de maldade"
    show Sabado = "Dia de estudar"
    show Domingo = "Dia de faustao - affffffffffff"
    
instance Show Numero where
    show Zero = "0"
    show Um = "1"
    
instance Eq Numero where
    -- Geral : (==) :: a -> a -> Bool
    -- Aqui dentro: (==) :: Numero -> Numero -> Bool
    Zero == Um = True
    Zero == Zero = True
    Um == Zero = False
    Um == Um = False
    
instance (Monoid a) =>(Bolsa a) where
    mempty = Nada
    mappend (UmaCoisa x) (UmaCoisa y) = UmaCoisa (x <> y)
    mappend x Nada = x
    mappend Nada x = x
    
d0 :: (Monoid a, Ord a) => a -> Bool
d0 x = x<>x == mempty


