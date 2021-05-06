module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Total a pagar" $ do
    it "Persona menor a 50 no recibe descuento" $ do
      (totalAPagar brian 100) `shouldBe` 100
    it "Persona que está en 50 y 70 tiene descuento del 10%" $ do
      (totalAPagar juan 100) `shouldBe` 90
    it "Persona mayor a 70 tiene descuento del 20%" $ do
      (totalAPagar marta 100) `shouldBe` 80
