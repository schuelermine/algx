{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}

module Data.Algebra where

import Data.Kind.Extensible
import Data.Kind
import GHC.TypeLits

data OperationFamily

class IsOperationFamily f

data Multiplicative
data Additive
data Generic
data Action

instance IsOperationFamily Multiplicative
instance IsOperationFamily Additive
instance IsOperationFamily Generic
instance IsOperationFamily Action

data OperationDefinitionKind
class IsOperationDefinitionKind f where
    type OpDefArguments f
    type MkOpDef f :: OpDefArguments f -> f

data ArityToValue
data ArityToArity
data ExplicitType

instance IsOperationDefinitionKind ArityToValue
instance IsOperationDefinitionKind ArityToArity
instance IsOperationDefinitionKind ExplicitType

