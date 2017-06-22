module Aula02 where


--Valeu constructer> Fica sempre ao lado direito
-- da igualdade palavra data.
-- Indica todos os valores assumidos por aquele
-- tipo.

data Cor = Azul | Vermelho | Verde | Branco | Preto deriving Show


data DayWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun 
               deriving (Show,Enum)

data DiaSemana = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo 
                 deriving (Show, Enum)
                 -- deriving Show (Mostra na tela um resultado daquele tipo) --
                 -- deriving Enum (Para uso de .. [Segunda .. Domingo])
                 

-- Patern Matching> Na entrada da funcao,
-- eh possivel definir um valor padrao
-- de entrada que se ajusta ao tipo
-- em questao.
agenda :: DiaSemana -> String
agenda Sexta = "Dia de maldade" 
agenda Sabado = "Dia de ressaca"
agenda Domingo = "Dia de descanso"
agenda _ = "Dia de faculdade" -- Qualquer dia que não for Sexta, Sabado ou Domingo --


numDia :: Int -> DiaSemana
numDia 1 = Domingo
numDia 2 = Segunda
numDia 3 = Terca
numDia 4 = Quarta
numDia 5 = Quinta
numDia 6 = Sexta
numDia 7 = Sabado
numDia _ = undefined
-

traduzirEN :: DayWeek -> DiaSemana
traduzirEN Mon = Segunda
traduzirEN Tue = Terca
traduzirEN Wed = Quarta
traduzirEN Thu = Quinta
traduzirEN Fri = Sexta
traduzirEN Sat = Sabado
traduzirEN Sun = Domingo
-- traduzirPT [Mon .. Sun] = [Segunda .. Domingo]


traduzirPT :: DiaSemana -> DayWeek
traduzirPT Segunda = Mon
traduzirPT Terca = Tue
traduzirPT Quarta = Wed
traduzirPT Quinta = Thu
traduzirPT Sexta = Fri
traduzirPT Sabado = Sat
traduzirPT Domingo = Sun


remunerar :: DiaSemana -> Double -> Double
remunerar Sabado x = x*1.5
remunerar Domingo x = x*2
remunerar _ x = x


-- Tuplas: Agrupamento fixo de valores. Estes
-- podem ser de tipos diferentes em cada coordenada
-- ex: (Bool, Int, Cor)
converter :: Cor -> (Int, Int, Int) 
converter Azul = (0, 0, 255)
converter Branco = (255, 255, 255)
converter Preto = (0, 0, 0)
converter Verde = (0, 255, 0)
converter Vermelho = (255, 0, 0)


converter2 :: (Int, Int, Int) -> Cor
converter2 (0, 0, 255) = Azul
converter2 (255, 255, 255) = Branco
converter2 (0, 0, 0) = Preto
converter2 (0, 255, 0) = Verde
converter2 (255, 0, 0) = Vermelho


somar1 :: (Int, Int) -> Int
somar1 (x, y) = x+y


misturar :: (Cor, Cor) -> Cor
misturar (Azul, Vermelho) = Preto
misturar (x, Branco) = x
misturar (Preto, _) = Preto
misturar (_, Preto) = Preto
misturar _ = Verde

ex4 :: (Int, Int, Int, Int) -> (Int, Int, Int, Int)
ex4 (a, b, c, d) = (a*2, b*3, c*4, d*5)

func :: (String, Bool) -> String
func (x, y) = x ++ show y 

--show transforma um tipo em string(no exemplo transforma bool em string)
-- _|_ - Bottom/Undefined --