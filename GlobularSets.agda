module GlobularSets where

open import Coinduction

record Glob : Set₁ where
  field
    ∣_∣   : Set
    homo : ∣_∣ →  ∣_∣  → ∞ Glob


-- universe definition

module UniverseGS (U : Set)(El : U → Set) where

  record uGlob : Set where
    field
      ∣_∣   : U
      homo : El ∣_∣ → El ∣_∣ → ∞ uGlob