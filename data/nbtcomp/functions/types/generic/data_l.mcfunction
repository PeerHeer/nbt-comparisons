# Author: PeerHeer
#
# Called when DataL has a type ID of 7..12.
# Calls nbtcomp:types/tree/range_7_12, which computes the length of the data.
# Returns the length in #nbtcomp.compare.generic.length.l.

function nbtcomp:types/tree/range_7_12
scoreboard players operation #nbtcomp.compare.generic.length.l nbtcomp.var = #nbtcomp.compare.generic.length nbtcomp.var