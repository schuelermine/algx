{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}

module Data.Algebra where

import Data.Kind.Extensible
import Data.Kind
import GHC.TypeLits

data OperationFamily
data SimpleOperationArity
data AlgebraOperationSourceArity
data AlgebraOperationTargetArity

instance IsExtensibleKind OperationFamily
instance IsExtensibleKind SimpleOperationArity
instance IsExtensibleKind AlgebraOperationSourceArity
instance IsExtensibleKind AlgebraOperationTargetArity

