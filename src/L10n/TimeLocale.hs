module L10n.TimeLocale where

import qualified Data.Time.Format as TF

enAUTimeLocale :: TF.TimeLocale
enAUTimeLocale =
    TF.defaultTimeLocale
    {TF.dateTimeFmt = "%a %e %b %X %Y", TF.dateFmt = "%d/%m/%Y"}
