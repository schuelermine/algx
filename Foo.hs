{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Foo where

import Data.Kind
import GHC.TypeLits

class IsExtensibleKind xk
class IsExtensibleKind xk => IsKind xk k

data OperationFamily
data SimpleOperationArity
data AlgebraOperationSourceArity
data AlgebraOperationTargetArity

instance IsExtensibleKind OperationFamily
instance IsExtensibleKind SimpleOperationArity
instance IsExtensibleKind AlgebraOperationSourceArity
instance IsExtensibleKind AlgebraOperationTargetArity

