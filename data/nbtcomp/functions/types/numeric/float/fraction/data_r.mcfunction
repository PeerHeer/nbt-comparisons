# Author: PeerHeer
#
# Called when DataR has a type ID of 5..6 and #nbtcomp.compare.result is still 0.
# Stores whether the number is negative or not: used to compute the fraction.
# Returns the fraction in #nbtcomp.compare.numeric.fraction.r.

# Check if the number is negative or not.
scoreboard players set #nbtcomp.compare.numeric.negative nbtcomp.var 0
execute if score #nbtcomp.compare.numeric.integral.high.r nbtcomp.var matches ..-1 run scoreboard players set #nbtcomp.compare.numeric.negative nbtcomp.var 1

# Store TypeData
data modify storage nbtcomp:compare TypeData set from storage nbtcomp:compare Compare.DataR

# Compute the fraction.
execute positioned -30000000 0 1600 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1, tag=nbtcomp.entity, limit=1] run function nbtcomp:types/numeric/float/fraction/store_position

# Store the fraction.
scoreboard players operation #nbtcomp.compare.numeric.fraction.r nbtcomp.var = #nbtcomp.compare.numeric.fraction nbtcomp.var