module Aula03 where
{-*
------ TIPOS ALGEBRICOS DE DADOS --------

O tipo Pessoa possui dois value constructors - Fisica e
Juridica - onde, o primeiro possui 2 CAMPOS e o
segundo possui 1 CAMPO.

------ RECORD SYNTAX --------------------
Eh a maneira de escrever um novo tipo nomeando seus campos.
Esta nomeacao se chama funcao de projecao (GET). 

*-}

data Sexo = M | F deriving Show

data Dinheiro = Real {valorDinheiro :: Double} |
                Dolar {valorDinheiro :: Double} |
                Euro {valorDinheiro :: Double} deriving Show

data Pessoa = Pessoa {nomePessoa :: String, 
                      sexoPessoa :: Sexo, 
                      salarioPessoa :: Dinheiro} deriving Show

bonus :: Pessoa -> Pessoa
bonus (Pessoa nome M (Real salario)) = Pessoa nome M (Real (salario+300))
bonus (Pessoa nome F (Real salario)) = Pessoa nome F (Real (salario+500))
bonus (Pessoa nome sexo (Dolar salario)) = Pessoa nome sexo (Dolar (salario+180))
bonus pessoa = pessoa

--
-- EXEMPLO: a) Funcao somar dinheiro. 
-- b) Funcao casamento, a resposta desta desta funcao
-- deve conter a concatencao do nome do casal e a soma em dinheiro.
-- 

conversaoDolar :: Dinheiro -> Dinheiro
conversaoDolar (Real valor) = Dolar (0.312437*valor)
conversaoDolar (Euro valor) = Dolar (1.13*valor)
conversaoDolar x = x

conversaoEuro :: Dinheiro -> Dinheiro
conversaoEuro (Real valor) = Euro (0.275992226*valor)
conversaoEuro (Dolar valor) = Euro (0.88*valor)
conversaoEuro x = x

conversaoReal :: Dinheiro -> Dinheiro
conversaoReal (Euro valor) = Real (3.62*valor)
conversaoReal (Dolar valor) = Real (3.20*valor)
conversaoReal x = x

somarDinheiro :: Dinheiro -> Dinheiro -> Dinheiro
somarDinheiro (Real valor) dinheiro = Real (valor + (valorDinheiro (conversaoReal dinheiro)))
somarDinheiro (Euro valor) dinheiro = Euro (valor + (valorDinheiro (conversaoEuro dinheiro)))
somarDinheiro (Dolar valor) dinheiro = Dolar (valor + (valorDinheiro (conversaoDolar dinheiro)))


