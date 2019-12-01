data modify storage nbtcomp:compare Compare.DataL set from storage nbtcomp:input DataL
data modify storage nbtcomp:compare Compare.DataR set from storage nbtcomp:input DataR

# Step 1: check if the values are exactly equal.
function nbtcomp:compare/generic/compare_equal

# TODO: type detection -> auto pick comparison
execute unless score #nbtcomp.compare.result nbtcomp.var matches 0 run function nbtcomp:types/get_types

execute if score #nbtcomp.compare.print_result nbtcomp.var matches 1 unless score #nbtcomp.compare.print_result_toggle nbtcomp.var matches 1 run tellraw @a ["Comparison result: ", {"score":{"name":"#nbtcomp.compare.result","objective":"nbtcomp.var"},"color":"green"}]
execute if score #nbtcomp.compare.print_result_toggle nbtcomp.var matches 1 unless score #nbtcomp.compare.print_result nbtcomp.var matches 1 run tellraw @a ["Comparison result: ", {"score":{"name":"#nbtcomp.compare.result","objective":"nbtcomp.var"},"color":"green"}]
scoreboard players set #nbtcomp.compare.print_result nbtcomp.var 0