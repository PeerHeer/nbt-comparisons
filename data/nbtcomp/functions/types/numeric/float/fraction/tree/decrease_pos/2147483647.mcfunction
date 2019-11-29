execute if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 0 at @s run teleport @s ~ ~-2147483647 ~
execute if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 1 at @s run teleport @s ~ ~2147483647 ~
function nbtcomp:types/numeric/float/fraction/check_max_int