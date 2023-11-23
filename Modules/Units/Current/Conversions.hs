module Units.Current.Conversions where

-- Nanoamps to amps
nAA :: Float -> Float
nAA na = na * 1e-9

-- Microamps to amps
uAA :: Float -> Float
uAA ua = ua * 1e-6

-- Milliamps to amps
mAA :: Float -> Float
mAA ma = ma * 1e-3 

-- Amps to nanoamps 
anA:: Float -> Float
anA a = a * 1e-9

-- Amps to microamps
auA :: Float -> Float
auA a = a * 1e-6

-- Amps to milliamps
amA :: Float -> Float
amA a = a * 1e-6

