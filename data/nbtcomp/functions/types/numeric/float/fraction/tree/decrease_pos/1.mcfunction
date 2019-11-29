scoreboard players set #nbtcomp.types.numeric.float.y_pos nbtcomp.var 0
execute if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 0 positioned ~ ~-1 ~ run teleport @s ~ ~ ~
execute if score #nbtcomp.compare.numeric.negative nbtcomp.var matches 1 positioned ~ ~1 ~ run teleport @s ~ ~ ~
