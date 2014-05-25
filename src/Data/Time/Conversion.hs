{- |
Module      :  $Header$
Description :  Converting between time units.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Data.Time.Conversion where

import qualified Data.Time.Calendar as C

import Data.Time.Units
  (Day
  ,Hour
  ,Minute
  ,Month
  ,Second (MkSecond)
  ,Year
  ,timeVal)

fromGregorian :: Year y -> Month mo -> Day d -> C.Day
-- | fromGregorian is a wrapper for Data.Time.Calendar.fromGregorian, which
-- lets us pass our 'Year' - 'Month' - 'Day' structures. It calls
-- Data.Time.Calendar.fromGregorian with the appropriate types, and returns
-- a Data.Time.Calendar.Day.
fromGregorian y mo s = C.fromGregorian (timeVal y) (timeVal mo) (timeVal s)

asSeconds :: Hour h -> Minute m -> Second s -> Second t
-- | asSeconds take some 'TimeUnit's and convert them to 'Second's.
asSeconds h m s = MkSecond $ 3600 * timeVal h + 60 * timeVal m + timeVal s
