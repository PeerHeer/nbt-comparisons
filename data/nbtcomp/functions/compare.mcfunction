# Author: PeerHeer
#
# Call this function to compare the values in DataL and DataR.
# First checks if the data is exactly equal (equal type, equal value).
# If not, does comparison based on type.
# The result can be printed by setting #nbtcomp.print_result_toggle or #nbtcomp.print_result

# Put the data in nbtcomp:compare storage.
data modify storage nbtcomp:compare Compare.DataL set from storage nbtcomp:input DataL
data modify storage nbtcomp:compare Compare.DataR set from storage nbtcomp:input DataR

# Step 1: check if the values are exactly equal.
function nbtcomp:_compare/generic/compare_equal

# If the data was not equal, start detecting the types of data. These types are used to determine how the data should be compared.
execute unless score #nbtcomp.compare.result nbtcomp.var matches 0 run function nbtcomp:types/get_types

# Print the result if #nbtcomp.print_result or #nbtcomp.print_result_toggle are 1.
# #nbtcomp.print_result is reset after every comparison.
execute if score #nbtcomp.print_result nbtcomp.var matches 1 unless score #nbtcomp.print_result_toggle nbtcomp.var matches 1 run tellraw @a ["Comparison result: ", {"score":{"name":"#nbtcomp.compare.result","objective":"nbtcomp.var"},"color":"green"}]
execute if score #nbtcomp.print_result_toggle nbtcomp.var matches 1 unless score #nbtcomp.print_result nbtcomp.var matches 1 run tellraw @a ["Comparison result: ", {"score":{"name":"#nbtcomp.compare.result","objective":"nbtcomp.var"},"color":"green"}]
scoreboard players set #nbtcomp.print_result nbtcomp.var 0