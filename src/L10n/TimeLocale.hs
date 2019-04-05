module L10n.TimeLocale where

import Data.Time.Format
import Data.Time.LocalTime
import Data.Semigroup

enAUTimeLocale :: TimeLocale
enAUTimeLocale =
    defaultTimeLocale
    { dateTimeFmt = "%a %e %b %X %Y"
    , dateFmt = "%d/%m/%Y"
    , knownTimeZones =
        tzs <> [ TimeZone (8*60) False "AWST"
        , TimeZone ((8*60)+45) False "ACWST"
        , TimeZone ((9*60)+30) False "ACST"
        , TimeZone ((10*60)+30) True "ACDT"
        , TimeZone (10*60) False "AEST"
        , TimeZone (11*60) True "AEDT"
        , TimeZone ((10*60)+30) False "LHST"
        , TimeZone ((11*60)) True "LHDT"
        ]
    }
  where
    tzs = foldr go [] (knownTimeZones defaultTimeLocale)
    go tz@(TimeZone _ _ "UT") ts = tz : ts
    go tz@(TimeZone _ _ "GMT") ts = tz : ts
    go _ ts = ts
