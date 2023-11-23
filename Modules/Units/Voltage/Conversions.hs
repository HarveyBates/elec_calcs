module Units.Voltage.Conversions where

-- Nanovolts to volts
nVV :: Float -> Float
nVV nv = nv * 1e-9

-- Microvolts to volts
uVV :: Float -> Float
uVV uv = uv * 1e-6

-- Millivolts to volts
mVV :: Float -> Float
mVV mv = mv * 1e-3 

-- Volts to nanovolts 
vnV:: Float -> Float
vnV v = v * 1e-9

-- Volts to microvolts
vuV :: Float -> Float
vuV v = v * 1e-6

-- Volts to millivolts
vmV :: Float -> Float
vmV v = v * 1e-6

