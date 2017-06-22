module Tp1 where

lista1 :: [String]
lista1 = ["A" ++ [x] ++"BB"| x <-['a' .. 'g']]

lista2 :: [Int]
lista2 = [(3*x)+2 | x<-[1 .. 13], x /= 4, x /= 7, x /= 11]

lista3 :: [Float]
lista3 = [1/(2^x) | x<-[0 .. 5]]

lista4 :: [Int]
lista4 = [(9*x)+1 | x<-[0 .. 7]]

lista5 :: [Int]
lista5 = [2*x | x<-[1 .. 15], x /= 3, x /= 7, x /= 10, x /= 13]

lista6 :: [String]
lista6 = [[x] | x<-['@' .. 'L'], x/='B', x/='F', x/='H', x/='I', x/='K']