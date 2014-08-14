{-# LANGUAGE GeneralizedNewtypeDeriving #-}

{- |
Module      :  $Header$
Description :  Time units.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Data.Time.Units where

-- | 'TimeUnit's are units of time with a value that's an instance of 'Num'.
-- The class is used to get type safety of time units, and a function for
-- getting "out" the value (analogues to 'fromJust' for 'Maybe') for every
-- type of 'Num', for free.
class TimeUnit t where
  -- | Get out the value in a 'TimeUnit'. The value's type is
  -- polymorphic and constrained to 'Num'.
  timeVal :: Num n => t -> n

instance TimeUnit Int where
  -- | The value of a 'TimeUnit' 'Int' is simply the 'Int' value.
  timeVal = fromInteger . toInteger

instance TimeUnit Integer where
  -- | The value of a 'TimeUnit' 'Integer' is simply the 'Integer' value.
  timeVal = fromInteger

-- | A 'Year' type, for type safety of time units.
newtype Year   a =
  -- | Make a 'Year', an 'Integer' deriving 'TimeUnit'.
  MkYear   Integer deriving TimeUnit

-- | A 'Month' type, for type safety of time units.
newtype Month  a =
  -- | Make a 'Month', an 'Int' deriving 'TimeUnit'.
  MkMonth  Int     deriving TimeUnit

-- | A 'Day' type, for type safety of time units.
newtype Day    a =
  -- | Make a 'Day', an 'Int' deriving 'TimeUnit'.
  MkDay    Int     deriving TimeUnit

-- | A 'Hour' type, for type safety of time units.
newtype Hour   a =
  -- | Make an 'Hour', an 'Int' deriving 'TimeUnit'.
  MkHour   Int     deriving TimeUnit

-- | A 'Minute' type, for type safety of time units.
newtype Minute a =
  -- | Make a 'Minute', an 'Int' deriving 'TimeUnit'.
  MkMinute Int     deriving TimeUnit

-- | A 'Second' type, for type safety of time units.
newtype Second a =
  -- | Make a 'Second', an 'Int' deriving 'TimeUnit'.
  MkSecond Int     deriving TimeUnit
