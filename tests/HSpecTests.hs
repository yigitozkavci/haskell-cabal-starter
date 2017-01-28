module Main where
 
import Haq
import Test.Hspec
 
main :: IO ()
main = hspec $ do
  describe "Validate haqify function" $
    it "haqify is supposed to prefix Haq! to things" $
      haqify "me" `shouldBe` "Haq! me"
  describe "Also validate haqify function" $
    it "haqify is supposed to prefix NonHaq! to things" $
      haqify "me" `shouldBe` "NonHaq! me"
