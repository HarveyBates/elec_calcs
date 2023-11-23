module Filters.LowPass where

-- Returns the -3dB cut-off frequency of a RC filter
-- Resistance is in ohms
-- Capacitance is in farads
lowPassRC :: Float -> Float -> Float
lowPassRC resistance capacitance = 1 / (2 * pi * resistance * capacitance)

-- Returns the -3dB cut-off frequency of a RL filter
-- Resistance is in ohms
-- Inductance is in henry
lowPassRL :: Float -> Float -> Float
lowPassRL resistance inductance = resistance / (2 * pi * inductance)

-- Returns the -3dB cut-off frequency of a LC filter
-- Inductance is in henry
-- Capacitance is in farads
lowPassLC :: Float -> Float -> Float
lowPassLC inductance capacitance = 1 / (2 * pi * sqrt(inductance * capacitance))

