module Aula01 where

somar :: Int -> Int -> Int
somar x y = x+y


boolean :: Int -> Bool
boolean x = x >= 5

string :: String -> String
string x = "Hello"++x

rev :: String -> String -> String
rev x y = (reverse x)++""++(reverse y)

--List Compreenshion

auto :: [Int]
auto = [2*x | x<-[0..200],x>=5,x<=190]


--Composição de Funções
f1 :: String -> Int
f1 x = 1+length x


f2 :: Int -> Bool
f2 x = x >= 19

ehPrimo :: Int -> Bool
ehPrimo n = length ([x | x <- [2 .. (n-1)], mod n x == 0]) == 0

lista :: [Int]
lista = [x | x <- [2 .. 100], ehPrimo x]



