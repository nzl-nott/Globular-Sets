module GlobularSetsExamples where

open import Data.Unit
open import Coinduction
open import GlobularSets
open import Relation.Binary.Core


1ω : Glob
1ω = 
  record 
  { ∣_∣ = ⊤
  ; homo = λ _ _ → ♯ 1ω 
  }


Idω : (A : Set) → Glob
Idω A = 
  record      
  { ∣_∣ = A
  ; homo = λ a b → ♯ (Idω (a ≡ b)) 
  }