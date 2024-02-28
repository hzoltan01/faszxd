module faszxd where

open import Agda.Builtin.IO using (IO)
open import Agda.Builtin.Unit using (⊤)
open import Agda.Builtin.String
open import Agda.Builtin.Nat

postulate putStrLn : String → IO ⊤
{-# FOREIGN GHC import qualified Data.Text as T #-}
{-# COMPILE GHC putStrLn = putStrLn . T.unpack #-}

repeat : String -> Nat -> String -> String
repeat _ 0 done = done
repeat to_append (suc n) s = repeat to_append n (primStringAppend s to_append)

main : IO ⊤
main = putStrLn (repeat "fasz xd\n" 1000000 "")
