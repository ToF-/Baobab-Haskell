module Specs
where

import Test.Hspec
import Drawing

main :: IO ()
main = hspec $ do
    describe "viewPort" $ do
        it "should find a viewPort for the rendering of a unique line" $ do
        viewPort [[(-1.0,-2.0),(2.0,2.0)]] `shouldBe` ViewPort (-1.15) (-2.2) (2.15) (2.2)  
        viewPort [[(1.0,1.0),(11.0,11.0)]] `shouldBe` ViewPort 0.5 0.5 11.5 11.5
 
