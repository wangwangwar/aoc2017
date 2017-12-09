import Test.Hspec
import Lib

main :: IO ()
main = hspec $ do
    describe "digitSum" $ do
        it "should sum the valid digits" $ do
            digitSum "1122" `shouldBe` 3
            digitSum "1111" `shouldBe` 4
            digitSum "1234" `shouldBe` 0
            digitSum "91212129" `shouldBe` 9

    describe "digitSumV2" $ do
        it "should sum the good digits" $ do
            digitSumV2 "1212" `shouldBe` 6
            digitSumV2 "1221" `shouldBe` 0 
            digitSumV2 "123425" `shouldBe` 4
            digitSumV2 "123123" `shouldBe` 12
            digitSumV2 "12131415" `shouldBe` 4
