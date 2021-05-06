module Library where
import PdePreludat

{-
    Definir una funcion totalAPagar, que recibe una persona y un monto a pagar, y según su edad aplique un descuento
        Si es mayor a 70 el descuento es de 20%
        Si está entre 50 y 70 el descuento es de 10%
        En caso contrario el precio no cambia
-}

data Persona = Persona {
    nombre :: String,
    edad :: Number
} deriving (Show)

totalAPagar :: Persona -> Number -> Number
totalAPagar persona monto
    | (edad persona) > 70 = monto * 0.8
    | (edad persona) >= 50 = monto * 0.9
    | otherwise = monto

brian = Persona "Brian" 22

marta = Persona "Marta" 75

juan = Persona "Juan" 52

shouldBe2 :: (Eq a) => a -> a -> Bool
shouldBe2 a b = a == b

test :: (Eq a) =>  a -> a -> String
test a b
    | a `shouldBe2` b = "El test paso correctamente"
    | otherwise = "El test fallo"