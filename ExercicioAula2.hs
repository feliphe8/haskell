module ExercicioAula2 where


data Arvore a = Nulo | Leaf a | Branch a (Arvore a) (Arvore a) deriving (Eq, Ord,Show)

emOrdem :: (Ord a) => Arvore a -> [a]
emOrdem (Branch x l r) = emOrdem l ++ [x] ++ emOrdem r
emOrdem (Leaf x) = [x]
emOrdem Nulo = []

preOrdem :: (Ord a) => Arvore a -> [a]
preOrdem (Branch x l r) = [x] ++ preOrdem l ++ preOrdem r
preOrdem (Leaf x) = [x]
preOrdem Nulo = []

posOrdem ::(Ord a) => Arvore a -> [a]
posOrdem (Branch x l r) = posOrdem l ++ posOrdem r ++ [x]
posOrdem (Leaf x) = [x]
posOrdem Nulo = []