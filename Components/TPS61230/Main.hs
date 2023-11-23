-- 5V Step up-converter TPS61230
-- See: https://www.ti.com/lit/ds/symlink/tps61230.pdf

import Ohms.Conversions
import System.IO
import Text.Printf
import Units.Current.Conversions
import Units.Resistance.Conversions

data DataSheet = TPS61230
  { vRef :: Float
  , vIn :: Float
  , vOut :: Float
  , vDivR1 :: Float
  , vDivR2 :: Float
  }

tps61230 =
  TPS61230
    { vRef = 1.0 -- Volts
    , vIn = 3.3 -- Volts
    , vOut = 5.0 -- Volts
    , vDivR1 = kOhmO 403 -- Kohms
    , vDivR2 = kOhmO 100 -- Kohms
    }

-- Startup
-- SS pin enables output voltage to follow the SS pin's
-- voltage slope
softStartTime :: Float -> Float
softStartTime ssTimer = (ssTimer / nAA 5) * (1 - (vIn tps61230 / vOut tps61230) * vRef tps61230)

-- Output voltage feedback
-- R2 should be < 100 K
-- Keeping R2 close to 100K allows for low quiescent current
voltageOut :: Float
voltageOut = vRef tps61230 * (1 + (vDivR1 tps61230 / vDivR2 tps61230))

nSecToSeconds :: Float -> Float
nSecToSeconds ns = ns * 1e-9

main :: IO ()
main = do
  printf "Soft-start time = %.2f sec\n" $ softStartTime $ nSecToSeconds 10
  printf "Volage out = %.2f V\n" voltageOut
