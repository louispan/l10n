{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE ImplicitParams #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}

module L10n where

import qualified Data.Text as T

class L10n locale a where
    l6e :: locale -> a -> T.Text

instance L10n locale T.Text where
    l6e _ x = x

instance L10n locale Int where
    l6e _ = T.pack . show

class GetLocale s a | s -> a where
    getLocale :: s -> a
