# Author: PeerHeer
#
# Called when DataR has a type ID of 0..6.
# Calls nbtcomp:types/tree/range_1_6, which computes the integral parts of the number in DataR.
# Returns the integral parts in #nbtcomp.compare.numeric.integral.low.r and #nbtcomp.compare.numeric.integral.high.r.
# Returns whether the number is positive or negative in #nbtcomp.compare.numeric.positive.r

function nbtcomp:types/tree/range_1_6
scoreboard players operation #nbtcomp.compare.numeric.integral.low.r nbtcomp.var = #nbtcomp.compare.numeric.integral.low nbtcomp.var
scoreboard players operation #nbtcomp.compare.numeric.integral.high.r nbtcomp.var = #nbtcomp.compare.numeric.integral.high nbtcomp.var
scoreboard players operation #nbtcomp.compare.numeric.positive.r nbtcomp.var = #nbtcomp.compare.numeric.positive nbtcomp.var