# Author: PeerHeer
#
# Stores the floating-point number in TypeData in the Y-position of the AEC.
# The position is first reduced to a number smaller than the maximum integer value.
# Next, a function tree is traversed to find the starting point from where the position
# of the AEC should be reduced further.
# The computed fractional part is stored in #nbtcomp.compare.numeric.fraction.

# Store the floating-point number inside the Y-position of the AEC.
data modify entity @s Pos[1] set from storage nbtcomp:compare TypeData

# Reduce the position to a number less than the maximum integer value.
function nbtcomp:types/numeric/float/fraction/check_max_int

# Traverse the function tree.
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 1..65535 at @s run function nbtcomp:types/numeric/float/fraction/tree/scoreboard/range_1_65535
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 65536..2147483647 at @s run function nbtcomp:types/numeric/float/fraction/tree/scoreboard/range_65536_2147483647

# Scales the fraction with 1000000000 to obtain 9 decimal places.
execute store result score #nbtcomp.compare.numeric.fraction nbtcomp.var run data get entity @s Pos[1] 1000000000

# Teleports the AEC back to its starting position.
teleport @s ~ 0.5 ~
