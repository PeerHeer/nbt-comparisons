# Author: PeerHeer
#
# Compares the integral parts of two numbers.
# First compares the high integrals, then the low integrals.
# Returns the result in #nbtcomp.compare.result.

# Compare high integrals.
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var < #nbtcomp.compare.numeric.integral.high.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var > #nbtcomp.compare.numeric.integral.high.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1

# If the high integrals are equal, compare the low integrals.
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var = #nbtcomp.compare.numeric.integral.high.r nbtcomp.var run function nbtcomp:_compare/numeric/compare_low_integrals

# If comparison yields equal, compare floating point fractions
execute if score #nbtcomp.compare.result nbtcomp.var matches 0 if score #nbtcomp.typeid.type_id nbtcomp.var matches 5..6 run function nbtcomp:types/numeric/float/get_float_fraction

# DEBUG: print integrals.
# tellraw @p ["Integral L: ",{"score":{"name":"#nbtcomp.compare.numeric.integral.high.l","objective":"nbtcomp.var"},"color":"red"},{"score":{"name":"#nbtcomp.compare.numeric.integral.low.l","objective":"nbtcomp.var"},"color":"green"}]
# tellraw @p ["Integral R: ",{"score":{"name":"#nbtcomp.compare.numeric.integral.high.r","objective":"nbtcomp.var"},"color":"red"},{"score":{"name":"#nbtcomp.compare.numeric.integral.low.r","objective":"nbtcomp.var"},"color":"green"}]