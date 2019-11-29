scoreboard players set #nbtcomp.types.numeric.fraction.success nbtcomp.var 0
#tellraw @p ["Current pos at 256 before: ",{"score":{"name":"#nbtcomp.types.numeric.float.y_pos","objective":"nbtcomp.var"}}]
execute store success score #nbtcomp.types.numeric.fraction.success nbtcomp.var if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 256..511 run scoreboard players remove #nbtcomp.types.numeric.float.y_pos nbtcomp.var 256
#tellraw @p ["Current pos at 256 after: ",{"score":{"name":"#nbtcomp.types.numeric.float.y_pos","objective":"nbtcomp.var"}}]
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 0 if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 0 positioned ~ ~-256 ~ run teleport @s ~ ~ ~
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 0 if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 1 positioned ~ ~256 ~ run teleport @s ~ ~ ~
execute if score #nbtcomp.types.numeric.fraction.success nbtcomp.var matches 1 unless score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 0 if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 0 positioned ~ ~-256 ~ run function nbtcomp:types/numeric/float/fraction/tree/decrease_pos/128
execute if score #nbtcomp.types.numeric.fraction.success nbtcomp.var matches 1 unless score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 0 if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 1 positioned ~ ~256 ~ run function nbtcomp:types/numeric/float/fraction/tree/decrease_pos/128
execute if score #nbtcomp.types.numeric.fraction.success nbtcomp.var matches 0 unless score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches 0 positioned ~ ~ ~ run function nbtcomp:types/numeric/float/fraction/tree/decrease_pos/128
