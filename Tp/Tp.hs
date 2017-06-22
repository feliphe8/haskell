module Tp where
    
{-*
j) Faça o tipo Dinheiro que contenha os campos valor
e correncia (Real ou Dolar) e uma função que converta
todos os dinheiros de uma lista para dolar (e outra
para real.)

Teste:
map conversaoReal [Dinheiro 5 Real, Dinheiro 6 Dolar, Dinheiro 9 Dolar]



    
*-}

data Correncia = Real |  Dolar  deriving Show

data Dinheiro = Dinheiro {valorDinheiro :: Double, currDinheiro :: Correncia} deriving Show

conversaoDolar :: Dinheiro -> Dinheiro
conversaoDolar (Dinheiro valor Real) = Dinheiro (0.312437*valor) Dolar
conversaoDolar x = x

conversaoReal :: Dinheiro -> Dinheiro
conversaoReal (Dinheiro valor Dolar) = Dinheiro (3.20*valor) Real
conversaoReal x = x

{-*
somarDinheiro :: Dinheiro -> Dinheiro -> Dinheiro
somarDinheiro (Dinheiro v1 Real) v2 = Dinheiro (v1 + valorDinheiro (conversaoReal v2)) Real
somarDinheiro (Dinheiro v1 Dolar) v2 = Dinheiro (v1 + valorDinheiro (conversaoDolar v2)) Dolar
*-}


    

{-* 
l) Faça um fold para somar todos os Dolares da lista.

Teste:
foldl (\x (Dinheiro y _) -> x+y) 0 .filter(isDolar) $ [Dinheiro 7 Real, Dinheiro 8 Dolar, Dinheiro 6 Dolar]
*-}

isDolar :: Dinheiro -> Bool
isDolar (Dinheiro x Dolar) = True
isDolar _ = False




{-* Teste 
filter (isDolar) [Dinheiro 4 Real, Dinheiro 5 Dolar, Dinheiro 6 Real]

*-}

isReal :: Dinheiro -> Bool
isReal (Dinheiro x Real) = True
isReal _ = False





{-*
Exercício 5.4 Faça uma função que receba um [String] e retorne todos elementos palíndromos. 
Ver exercício 1.9.

Teste:
palindromo ["ANA","FELIPHE","ROTOR","RICARDO"]

*-}


palindromo :: [String] -> [String]
palindromo [] = []
palindromo (palavra:vetorPalavras)
    | palavra == reverse palavra = palavra : palindromo vetorPalavras
    | otherwise = palindromo vetorPalavras
    
    


