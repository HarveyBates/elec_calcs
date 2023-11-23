module Ohms.Conversions where

-- To Current
fromVRtoI :: Float -> Float -> Float
fromVRtoI v r = v / r

fromPVtoI :: Float -> Float -> Float
fromPVtoI p v = p / v

fromPRtoI :: Float -> Float -> Float
fromPRtoI p r = sqrt (p / r)

-- To Volts
fromPRtoV :: Float -> Float -> Float
fromPRtoV p r = sqrt (p * r)

fromPItoV :: Float -> Float -> Float
fromPItoV p i = p / i

fromIRtoV :: Float -> Float -> Float
fromIRtoV i r = i * r

-- To Resistance
fromVItoR :: Float -> Float -> Float
fromVItoR v i = v / i

fromVPtoR :: Float -> Float -> Float
fromVPtoR v p = (v**2) / p

fromPItoR :: Float -> Float -> Float
fromPItoR p i = p / (i**2)

-- To Power
fromVItoP :: Float -> Float -> Float
fromVItoP v i = v * i

fromIRtoP :: Float -> Float -> Float
fromIRtoP i r = (i**2) * r

fromVRtoP :: Float -> Float -> Float
fromVRtoP v r = (v**2) / r

