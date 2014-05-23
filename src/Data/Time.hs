{- |
Module      :  $Header$
Description :  Time representation and manipulation.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Data.Time (
  -- Time.Conversion
  asSeconds,
  fromGregorian,
  -- Time.Units
  TimeUnit,
  timeVal,
  Year   (MkYear),
  Month  (MkMonth),
  Day    (MkDay),
  Hour   (MkHour),
  Minute (MkMinute),
  Second (MkSecond)
  ) where

import Data.Time.Conversion
import Data.Time.Units
