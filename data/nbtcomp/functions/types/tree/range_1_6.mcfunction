# Type is numeric.
scoreboard players set #nbtcomp.compare.numeric.fraction nbtcomp.var 0
scoreboard players set #nbtcomp.compare.numeric.positive nbtcomp.var 0

execute if score #nbtcomp.typeid.type_id nbtcomp.var matches 1..3 run function nbtcomp:types/tree/range_1_3
execute if score #nbtcomp.typeid.type_id nbtcomp.var matches 4..6 run function nbtcomp:types/tree/range_4_6