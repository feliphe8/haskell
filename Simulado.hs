module Simulado where

import Data.Monoid
-- Crie um tipo Unidade com um value constructor chamado unidade, sendo instancia de Show, 

-- Crie uma instancia de Monoid para unidade e defina seu mempty e mappend os justificando 
    
-- Resposta:
-- O tipo unidade só possui um value constructor logo o mesmo é o mappend e o mempty.

-- import Data.Monoid

-- data Unidade = Unidade deriving Show
-- instance Monoid Unidade where 
--     mempty = Unidade
--     mappend Unidade Unidade = Unidade
------------------------------------------------------------------------------------------------------------------------------

-- Considere a função

-- data Tupla a = Tupla a a deriving Show 
-- instance Functor Tupla where
--     fmap f (Tupla x y) = Tupla (id f $ y) (id f $ x)

-- Qual o valor da expressão fmap (\x-> x > 3) $ Tupla 4 2?
-- R: Tupla False True

-- Qual o valor da expressão :t Tupla 'K' 'L'?
-- R: Tupla 'K' 'G' :: Tupla Char 

-- Qual o valor de fmap id $ Tupla 4 7
-- R: Tupla 7 4

-- Faça uma instancia ed Eq para Tupla, onde duas Tuplas são iguais se o primeiro elemento de uma for
-- igual ao segundo elemento da outra
-- R:
--   instance (Eq a) => Eq (Tupla a) where
--      (Tupla a b) == (Tupla c d) = (a == d) 

-- Qual o valor de :t Tupla () ()?
-- R: Tupla () () :: Tupla ()

-- Faca uma instancia de Show para Tupla x y que mostre na tela "fst: x =? and: y":
-- R:
--    instance (Show a) => Show (Tupla a) where
--       show (Tupla x y) = "fst: "++ (show x) ++ " =? and:" ++ (show y)

-- Do jeito que está é possivel calcular a expressão Tupla 1 2 >= Tupla 2 3? Justifique.
-- R: Não pois não foi criada/declarada nenhuma instancia de Ord e Eq (Ordenação de elementos, e equitação seila..), 
--    logo não é possivel comprar maior ou menor.
------------------------------------------------------------------------------------------------------------------------------

-- Crie o tipo Bin que possua os values constructors Zero e Um como instancia de Show
    data Bin = Zero | Um deriving Show
    
-- Cria o tipo Pixel com o value constructor Pixel contendo um campo (Bin,Bin,Bin) e instancia de Show.
    data Pixel = Pixel (Bin, Bin, Bin) deriving Show
    
-- Crie o tipo Color comos value constructors Red, Green, Blue, White, Black.
    data Color = Red | Green | Blue | White | Black deriving Show
    
-- Crie uma função toBin que transforma Int em Bin.
    toBin::Int->Bin
    toBin 0 = Zero
    toBin 1 = Um
    toBin _ = undefined
    
-- Crie uma função que transforma Int em Bin.
-- Crie a função que receba uma Pixel e devolva Maybe Color, (Dica: Red corresponde a (Um, Zero, Zero).
    funPix::Pixel->Maybe Color
    funPix (Pixel (Um, Zero, Zero)) = Just Red
    funPix (Pixel (Zero, Zero, Zero)) = Just Black
    funPix (Pixel (Um, Um, Um)) = Just White
    funPix (Pixel (Zero, Um, Zero)) = Just Green
    funPix (Pixel (Zero, Zero, Um)) = Just Blue
    funPix _ = undefined
-- Faca uma função filterRed que recebe uma lista de PIzel e retorna uma lista de MaybeColor contendo apenas Just Red.