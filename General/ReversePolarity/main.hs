-- To run:
-- runghc -i.. main.hs

import System.IO
import Text.Printf
import Text.Read (readMaybe)
import System.Exit (exitFailure)
import Ohms.Conversions

getInput :: String -> IO Float
getInput parameter = do
  printf "What's the %s?\n" parameter
  iv <- getLine
  case readMaybe iv :: Maybe Float of
    Just f -> return f
    Nothing -> do
      printf "Could not parse input.\n"
      exitFailure

main :: IO ()
main = do 

  -- Get the input voltage
  input_voltage <- getInput "Input Voltage (in volts)"
  
  -- Get the max current
  max_current <- getInput "Max Current (in amps)"

  -- Choose a P-Channel Mosfet with a low Drain to Source Resistance (Rds ON)
  -- Get the Rds ON of the mosfet
  resistance <- getInput "Drain to Source Resistance (Rds ON) of the Mosfet (in ohms)"

  -- Sizing the zener
  zener_d <- getInput "Gate to Source Voltage (Vgs) of the Mosfet (in volts)"

  printf "--- Results ---\n"
  printf "Drain to Source Voltage (Vdss):\t>%.2f\tV\n" $ input_voltage * 1.33
  printf "Current Continuous Drain (Id):\t>%.2f\tA\n" $ max_current * 1.33
 
  -- Once a mosfet has been chosen check its Rds ON
  let power = fromIRtoP max_current resistance
  
  --let power = (max_current ** 2) * resistance
  printf "Mosfet power dissipation:\t%.2f\tW\n" power

  printf "Zener Volage Nominal (Vz):\t<%.2f\tV\n" zener_d
  
