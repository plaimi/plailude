{- |
Module      :  $Header$
Description :  IO. dealwithit.jpeg.
Copyright   :  (c) plaimi 2015
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Plailude.Control.IO where

import System.Posix.IO
  (
  stdInput,
  )
import System.Posix.Terminal
  (
  queryTerminal,
  )

infixr 9 ~+~
(~+~) :: IO a -> IO a -> IO a
-- | Query the terminal for STDIN. If there is any, do lhs -- if not, do rhs.
l ~+~ r = queryTerminal stdInput >>= \i -> if i then l else r
