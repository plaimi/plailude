{- |
Module      :  $Header$
Description :  Bools. dealwithit.jpeg.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Plailude.Control.Bool where

if' :: Bool -> a -> a -> a
-- | If 'True' then the first value, else the second.
if' True  = const
if' False = const id

fi :: a -> a -> Bool -> a
-- | If 'True' then the first value, else the second.
fi = flip . flip if'
