module Units.Resistance.Conversions where

-- Milliohms to ohms
mOhmO :: Float -> Float
mOhmO mo = mo * 1e-3

-- Kohms to ohms
kOhmO :: Float -> Float
kOhmO ko = ko * 1e-6

-- Mohms to ohms
megOO :: Float -> Float
megOO mo = mo * 1e-9

-- O to Kohms
ohmKO :: Float -> Float
ohmKO o = o * 1e-3

-- O to Mohms
ohmMO :: Float -> Float
ohmMO o = o * 1e-6

-- Kohm to Mohms
kOmegO :: Float -> Float
kOmegO ko = ko * 1e-3

