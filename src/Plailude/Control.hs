{- |
Module      :  $Header$
Description :  Higher-kinded stuff.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Plailude.Control (
  (!?),
  (~+~),
  both,
  erretreat,
  if',
  fi,
  retreat,
  ) where

import Plailude.Control.Arrow
import Plailude.Control.Bool
import Plailude.Control.IO
import Plailude.Control.List
import Plailude.Control.Monad
