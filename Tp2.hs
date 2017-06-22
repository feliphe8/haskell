module Tp2 where

--Ex 3.5) Sabe-se que as unidades imperiais de comprimento podem ser
--Inch, Yard ou Foot (há outras ignoradas aqui). Sabe-se que 1in = 0.0254m,
--1yd = 0.9144m, 1f t = 0.3048

data UnImperial = Inch | Yard | Foot deriving Show



--  Faça a função converterMetros que recebe a unidade
--imperial e o valor correspondente nesta unidade e 
--retorna o valor em metros
converterMetros :: (UnImperial, Double) -> Double   -- https://pt.wikipedia.org/wiki/Unidade_inglesa
converterMetros (Inch, x) = 0.0254*x
converterMetros (Yard, y) = 0.9144*y
converterMetros (Foot, z) = 0.3048*z


-- Faça a função converterImperial que recebe um valor 
--em metros e a unidade de conversão e retorna o valor 
--convertido para a unidade desejada.
converterImperial :: (Double, UnImperial) -> Double
converterImperial (x, Inch) = x/0.0254
converterImperial (y, Yard) = y/0.9144
converterImperial (z, Foot) = z/0.3048





--Ex 3.6) Faça um novo tipo chamado Mes que possui como valores todos
--os meses do ano. Implemente

data Mes = Jan | Fev | Mar | Abr | Mai | Jun | Jul | Ago | Set | Out | Nov 
           | Dez deriving Show
           
data Emisferio = Norte | Sul deriving Show

data Estacao = Primavera | Verao | Outono | Inverno deriving Show
           
         
--Ex 1) A função checaFim que retorna o número de dias 
--que cada mês possui (considere
--Fevereiro tendo 28 dias).
checaFim :: Mes -> Int
checaFim Jan = 31
checaFim Fev = 28
checaFim Mar = 31
checaFim Abr = 30
checaFim Mai = 31
checaFim Jun = 30
checaFim Jul = 31
checaFim Ago = 31
checaFim Set = 30
checaFim Out = 31
checaFim Nov = 30
checaFim Dez = 31


--Ex 2) a função prox que recebe um mês 
--atual e retorna o próximo mês.

prox :: Mes -> Mes
prox Jan = Fev
prox Fev = Mar
prox Mar = Abr
prox Abr = Mai
prox Mai = Jun
prox Jun = Ago
prox Ago = Set
prox Set = Out
prox Out = Nov
prox Nov = Dez
prox Dez = Jan


--Ex 3) a função estacao que retorna a estacao do ano 
--de acordo com o mes e com o hemisfério. 
--Use apenas tipos criados pela palavra data aqui.


estacao :: (Mes, Emisferio) -> Estacao
estacao (Jan, Norte) = Inverno
estacao (Fev, Norte) = Inverno
estacao (Mar, Norte) = Primavera
estacao (Abr, Norte) = Primavera
estacao (Mai, Norte) = Primavera
estacao (Jun, Norte) = Verao
estacao (Jul, Norte) = Verao
estacao (Ago, Norte) = Verao
estacao (Set, Norte) = Outono
estacao (Out, Norte) = Outono
estacao (Nov, Norte) = Outono
estacao (Dez, Norte) = Inverno
estacao (Jan, Sul) = Verao
estacao (Fev, Sul) = Verao
estacao (Mar, Sul) = Outono
estacao (Abr, Sul) = Outono
estacao (Mai, Sul) = Outono
estacao (Jun, Sul) = Inverno 
estacao (Jul, Sul) = Inverno
estacao (Ago, Sul) = Inverno
estacao (Set, Sul) = Primavera
estacao (Out, Sul) = Primavera
estacao (Nov, Sul) = Primavera
estacao (Dez, Sul) = Verao