{- |
Module      :  $Header$
Description :  Lists. dealwithit.jpeg.
Copyright   :  (c) plaimi 2015
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Plailude.Control.List where

(!?) :: [a] -> Int -> Maybe a
-- | Safe indexing of lists.
l !? i = if i < 0 then Nothing else go i l
  where
    go _ []     = Nothing
    go 0 (x:_)  = Just x
    go n (_:xs) = go (n - 1) xs
