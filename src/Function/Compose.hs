{- |
Module      :  $Header$
Description :  Mathematical compositions.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Function.Compose where

-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- (f . g) x = f (g x)

(.:) :: (c -> d) -> (a -> b -> c) -> a -> b -> d
-- | Compose two functions where the second function takes two values and
-- delivers its result as a single value to the first function.
--
-- This is equivalent to: (f .: g) x y = f (g x y).
(.:)  = (.).(.)

(.:.) :: (d -> e) -> (a -> b -> c -> d) -> a -> b -> c -> e
-- | Compose two functions where the second function takes three values and
-- delivers its result as a single value to the first function.
--
-- This is equivalent to: (f .:. g) x y z = f (g x y z).
(.:.) = (.).(.:)
