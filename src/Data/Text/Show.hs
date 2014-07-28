{- |
Module      :  $Header$
Description :  Show various Text formats.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Data.Text.Show where

import qualified Data.ByteString.Lazy as L
import qualified Data.ByteString.Lazy.Char8 as L8

showL8 :: Show a => a -> L.ByteString
-- | 'showL8' converts a showable value to a 'L.ByteString' using 'show'.
showL8 = L8.pack . show
