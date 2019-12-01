# Author: PeerHeer
#
# Compares the fractional parts of two numbers.
# Returns the result in #nbtcomp.compare.result.

# Compare fractions.
execute if score #nbtcomp.compare.numeric.fraction.l nbtcomp.var < #nbtcomp.compare.numeric.fraction.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.numeric.fraction.l nbtcomp.var = #nbtcomp.compare.numeric.fraction.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 0
execute if score #nbtcomp.compare.numeric.fraction.l nbtcomp.var > #nbtcomp.compare.numeric.fraction.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1

# DEBUG: print integrals + fractions.
# tellraw @a ["Number L: ",{"score":{"name":"#nbtcomp.compare.numeric.integral.high.l","objective":"nbtcomp.var"},"color":"red"},{"score":{"name":"#nbtcomp.compare.numeric.integral.low.l","objective":"nbtcomp.var"},"color":"green"},".",{"score":{"name":"#nbtcomp.compare.numeric.fraction.l","objective":"nbtcomp.var"},"color":"yellow"}]
# tellraw @a ["Number R: ",{"score":{"name":"#nbtcomp.compare.numeric.integral.high.r","objective":"nbtcomp.var"},"color":"red"},{"score":{"name":"#nbtcomp.compare.numeric.integral.low.r","objective":"nbtcomp.var"},"color":"green"},".",{"score":{"name":"#nbtcomp.compare.numeric.fraction.r","objective":"nbtcomp.var"},"color":"yellow"}]