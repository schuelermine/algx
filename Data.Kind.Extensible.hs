{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}

module Data.Kind.Extensible where

class IsExtensibleKind xk
class IsExtensibleKind xk => IsKind xk k