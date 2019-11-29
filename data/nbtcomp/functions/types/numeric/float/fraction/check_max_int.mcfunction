execute store result score #nbtcomp.types.numeric.float.y_pos nbtcomp.var run data get entity @s Pos[1]
execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var matches ..-1 run scoreboard players operation #nbtcomp.types.numeric.float.y_pos nbtcomp.var *= #nbtcomp.constant.negate nbtcomp.const

execute if score #nbtcomp.types.numeric.float.y_pos nbtcomp.var = #nbtcomp.constant.int_max nbtcomp.const run function nbtcomp:types/numeric/float/fraction/tree/decrease_pos/2147483647
