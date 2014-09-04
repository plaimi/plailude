{- |
Module      :  $Header$
Description :  Monads. dealwithit.jpeg.
Copyright   :  (c) plaimi 2014
License     :  GPL-3

Maintainer  :  plailude@plaimi.net
-} module Plailude.Control.Monad where

import Control.Monad
  (
  liftM,
  )
import Control.Monad.Except
  (
  MonadError,
  catchError,
  throwError,
  )

retreat :: (Monad m, Monad n) => m a -> m (n a)
-- | Retreat the value a of a 'Monad' m further into the 'Monad' burrito by
-- injecting it into yet another 'Monad' n, giving us m (n a).
retreat = liftM return

erretreat :: (MonadError e m, MonadError e n) => m a -> m (n a)
-- | 'retreat' the value a of a 'MonadError' m further into the 'MonadError'
-- burrito by injecting it into yet another 'MonadError' n, giving us m (n a).
-- If there's an error, it is rethrown inside n.
erretreat a = retreat a `catchError` (return . throwError)
