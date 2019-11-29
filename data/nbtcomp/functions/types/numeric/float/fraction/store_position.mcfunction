data modify entity @s Pos[1] set from storage nbtcomp:compare TypeData
function nbtcomp:types/numeric/float/fraction/check_max_int

tellraw @p ["Position before: ",{"nbt":"Pos[1]","entity":"@s"}]
tellraw @p ["float.y_pos before: ",{"score":{"name":"#nbtcomp.types.numeric.float.y_pos","objective":"nbtcomp.var"}}]

execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 1..65535 at @s run function nbtcomp:types/numeric/float/fraction/tree/scoreboard/range_1_65535
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 65536..2147483647 at @s run function nbtcomp:types/numeric/float/fraction/tree/scoreboard/range_65536_2147483647

execute store result score #nbtcomp.compare.numeric.fraction nbtcomp.var run data get entity @s Pos[1] 1000000000

tellraw @p ["Position After: ",{"nbt":"Pos[1]","entity":"@s"}]
tellraw @p ["Fraction After: ",{"score":{"name":"#nbtcomp.compare.numeric.fraction","objective":"nbtcomp.var"}}]

teleport @s ~ 0.5 ~
