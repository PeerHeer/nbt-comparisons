# Author: PeerHeer
#
# Compares the length of DataL and DataR.
# Returns the result in #nbtcomp.compare.result.

# Compare lengths of DataL and DataR.
execute if score #nbtcomp.compare.generic.length.l nbtcomp.var < #nbtcomp.compare.generic.length.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.generic.length.l nbtcomp.var = #nbtcomp.compare.generic.length.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 0
execute if score #nbtcomp.compare.generic.length.l nbtcomp.var > #nbtcomp.compare.generic.length.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1