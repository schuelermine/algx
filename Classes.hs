{-# LANGUAGE NoImplicitPrelude, ConstraintKinds, UndecidableSuperClasses #-}

module Classes where

import Data.Kind

{- Low Level - Individual values -}

class HasAddition t where
    addition :: t -> t -> t

class HasAdditiveUnit t where
   additiveUnit :: t

class HasAdditiveInverse t where
    additiveInverse :: t -> t

class HasMultiplication t where
    multiplication :: t -> t -> t

class HasMultiplicativeUnit t where
    multiplicativeUnit :: t

class HasMultiplicativeInverse t where
    multiplicativeInverse :: t -> t

class HasRightAction t where
    rightAction :: t -> t -> t

class HasLeftAction t where
    leftAction :: t -> t -> t

class HasReverseAction t where
    reverseAction :: t -> t

class HasGenericCombinator t where
    genericCombine :: t -> t -> t

class HasGenericUnit t where
    genericUnit :: t -> t -> t

class HasGenericInverse t where
    genericInverse :: t -> t

{- Mid Level - Individual laws -}

class (hasEl t, hasOp t) => IsUnit hasEl hasOp t

class hasOp t => IsAssociative hasOp t

class hasOp t => IsCommutative hasOp t

class (hasOp1 t, hasOp2 t) => IsDistributive hasOp1 hasOp2 t

-- | a + (b + c) = (a + b) + c
type AdditionIsAssociative t = IsAssociative HasAddition

-- | a + b = b + a
class HasAddition t => AdditionIsCommutative t

-- | (a + b) + c = (a + c) + (b + c)
class HasAddition t => AdditionIsRightSelfDistributive t

-- | a + (b + c) = (a + b) + (a + c)
class HasAddition t => AdditionIsLeftSelfDistributive t

-- | zro + a = a
class (HasAddition t, HasAdditiveUnit t) => AdditiveUnitIsRightIdentity t

-- | a + zro = a
class (HasAddition t, HasAdditiveUnit t) => AdditiveUnitIsLeftIdentity t

{- Mid Level - Unnamed law combinations -}

-- | zro + a = a
--   a + zro = a
class (AdditiveUnitIsLeftIdentity t, AdditiveUnitIsRightIdentity t) => AdditiveUnitIsIdentity t

{- High Level - Labels for groups of laws -}

