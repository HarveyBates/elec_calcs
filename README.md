# Electronics Calculations
Calculations for various electronics components and use-cases.

## Requirements
Requires [The Glasgow Haskell Compiler (GHC)](https://www.haskell.org/ghc). Available [here](https://www.haskell.org/ghc/distribution_packages.html).

If using homebrew:
```bash
brew install ghc
```

## Installation
In your terminal.
```bash
git clone https://github.com/HarveyBates/elec_calcs
cd elec_calcs
```

## Running
Choose a component under `Components/`. 

### Example
For example, to run the required calculations for the [TPS6123x boost converter](https://www.ti.com/lit/ds/symlink/tps61235p.pdf):
```bash
cd elec_calcs/Components/TPS6123x
```

Adjust the required values inside `Main.hs` to suit your application:
```haskell
tps6123 = TPS6123 {
  vRef   = 1.0,        -- Volts
  vIn    = 3.3,        -- Volts
  vOut   = 5.0,        -- Volts
  vDivR1 = kOhmO 403,  -- KΩ
  vDivR2 = kOhmO 100,  -- KΩ
}
```

Run using:
```bash
runghc -i../../Modules Main.hs
```

Result:
```
Soft-start time = 0.68 sec
Volage out = 5.03 V
```
