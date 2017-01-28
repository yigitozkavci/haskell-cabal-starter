module Main where
import Haq

main :: IO ()
main = putStrLn . haqify $ "Hello there!"
