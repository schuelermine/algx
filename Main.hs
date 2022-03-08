{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Data.Kind
import GHC.TypeLits

data OperationFamily
data SimpleOperationArity
data AlgebraOperationSourceArity
data AlgebraOperationTargetArity

class IsExtensibleKind xk

instance IsExtensibleKind OperationFamily
instance IsExtensibleKind SimpleOperationArity
instance IsExtensibleKind AlgebraOperationSourceArity
instance IsExtensibleKind AlgebraOperationTargetArity

class IsExtensibleKind xk => IsKind xk k
