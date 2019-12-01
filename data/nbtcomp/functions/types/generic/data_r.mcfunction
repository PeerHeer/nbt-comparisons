# Author: PeerHeer
#
# Called when DataR has a type ID of 7..12.
# Calls nbtcomp:types/tree/range_7_12, which computes the length of the data.
# Returns the length in #nbtcomp.compare.generic.length.r.

function nbtcomp:types/tree/range_7_12
scoreboard players operation #nbtcomp.compare.generic.length.r nbtcomp.var = #nbtcomp.compare.generic.length nbtcomp.var