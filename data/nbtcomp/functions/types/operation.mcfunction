# Author: PeerHeer
#
# Chooses to do numeric or generic operations on data based on the type of that data.

# Do the required opreations for DataL
data modify storage nbtcomp:compare TypeData set from storage nbtcomp:compare Compare.DataL
scoreboard players operation #nbtcomp.typeid.type_id nbtcomp.var = #nbtcomp.type.l nbtcomp.var
execute if score #nbtcomp.type.l nbtcomp.var matches 1..6 run function nbtcomp:types/numeric/data_l
execute if score #nbtcomp.type.l nbtcomp.var matches 7..12 run function nbtcomp:types/generic/data_l

# Do the required operations for DataR
data modify storage nbtcomp:compare TypeData set from storage nbtcomp:compare Compare.DataR
scoreboard players operation #nbtcomp.typeid.type_id nbtcomp.var = #nbtcomp.type.r nbtcomp.var
execute if score #nbtcomp.type.r nbtcomp.var matches 1..6 run function nbtcomp:types/numeric/data_r
execute if score #nbtcomp.type.r nbtcomp.var matches 7..12 run function nbtcomp:types/generic/data_r

# Compare integrals and, if applicable, fractions.
execute if score #nbtcomp.typeid.type_id nbtcomp.var matches 1..6 run function nbtcomp:_compare/numeric/compare_integrals

# Compare lengths
execute if score #nbtcomp.typeid.type_id nbtcomp.var matches 7..12 run function nbtcomp:_compare/generic/compare_lengths