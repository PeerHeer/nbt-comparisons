# Author: PeerHeer
#
# Reduces the position of the AEC to a value smaller than the maximum integer value.
# Returns the reduced position in #nbtcomp.types.numeric.float.y_pos.

# Store the position in a score.
execute store result score #nbtcomp.types.numeric.float.y_pos nbtcomp.var run data get entity @s Pos[1]
# Make negative positions positive.
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches ..-1 run scoreboard players operation #nbtcomp.types.numeric.float.y_pos nbtcomp.var *= #nbtcomp.constant.negate nbtcomp.const
# If the score is equal to the max int value, recursively loop until it isn't.
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var = #nbtcomp.constant.int_max nbtcomp.const run function nbtcomp:types/numeric/float/fraction/tree/decrease_pos/2147483647
