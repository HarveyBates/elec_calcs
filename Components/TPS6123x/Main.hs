{-# LANGUAGE NumericUnderscores #-}

-- 5V Step up-converter TPS6123x
import System.IO
import Text.Printf
import Ohms.Conversions
import Units.Current.Conversions

data DataSheet = TPS6123 {
  vRef :: Float,
  vIn :: Float,
  vOut :: Float
}

tps6123 = TPS6123 {
  vRef = 1.0,
  vIn = 3.3,
  vOut = 5.0
}

-- Startup
-- SS pin enables output voltage to follow the SS pin's 
-- voltage slope
softStartTime :: Float -> Float
softStartTime css = (css / nAA 5) * (1 - (vIn tps6123 / vOut tps6123) * vRef tps6123)

-- Output voltage feedback
-- R2 should be < 100 K
-- Keeping R2 close to 100K allows for low quiescent current
voltageOut :: Integer -> Integer -> Float
voltageOut r1 r2 = vRef tps6123 * (1 + (fromIntegral r1 / fromIntegral r2))

main :: IO ()
main = do
  printf "Soft-start time = %.2f sec\n" $ softStartTime $ nAA 10
  printf "Volage out = %.2f V\n" $ voltageOut 403_000 100_000
