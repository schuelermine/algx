{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}

module Data.Algebra where

import Data.Kind.Extensible
import Data.Kind
import GHC.TypeLits

data OperationFamily
instance IsExtensibleKind OperationFamily

data Multiplicative
data Additive
data Generic
data Action

instance IsKind OperationFamily Multiplicative
instance IsKind OperationFamily Additive
instance IsKind OperationFamily Generic
instance IsKind OperationFamily Action

data OperationDefinitionKind
instance IsExtensibleKind OperationDefinitionKind

data ArityToValue
data ArityToArity
data ExplicitType
instance IsKind OperationDefinitionKind ArityToValue
instance IsKind OperationDefinitionKind ArityToArity
instance IsKind OperationDefinitionKind ExplicitType

