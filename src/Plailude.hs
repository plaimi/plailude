{- |
Module      :  $Header$
Description :  Prelude that exports all the most useful functions.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Plailude (
  -- Function
  (.:),
  (.:.),
  -- Data.Time
  Hour   (MkHour),
  Minute (MkMinute),
  Second (MkSecond),
  Year   (MkYear),
  Month  (MkMonth),
  Day    (MkDay),
  TimeUnit,
  asSeconds,
  fromGregorian,
  timeVal
) where

import Data.Time
import Function
