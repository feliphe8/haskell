data Pokemon = Charmander | Squirtle | Bulbassaur 
               deriving Show

data Trainer = Trainer String Pokemon deriving Show

vencedor :: Trainer -> Trainer -> String
vencedor (Trainer n1 Squirtle) (Trainer n2 Charmander) = n1
vencedor (Trainer n1 Charmander) (Trainer n2 Squirtle) = n2
vencedor (Trainer n1 Bulbassaur) (Trainer n2 Squirtle) = n1
vencedor (Trainer n1 Squirtle) (Trainer n2 Bulbassaur) = n2
vencedor (Trainer n1 Bulbassaur) (Trainer n2 Charmander) = n2
vencedor (Trainer n1 Charmander) (Trainer n2 Bulbassaur) = n1
vencedor _ _ = "Empate"




