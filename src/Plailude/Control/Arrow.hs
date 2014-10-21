{- |
Module      :  $Header$
Description :  Arrows. dealwithit.jpeg.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Plailude.Control.Arrow where

import Control.Arrow
  (
  (***),
  Arrow,
  )
import Control.Monad
  (
  join,
  )

both :: Arrow a => a b c -> a (b, b) (c, c)
-- | Send both components of the input through the argument arrow.
both = join (***)
