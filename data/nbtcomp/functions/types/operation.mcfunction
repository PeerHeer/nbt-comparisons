# Data L
data modify storage nbtcomp:compare TypeData set from storage nbtcomp:compare Compare.DataL
scoreboard players operation #typeid.type_id typeid.var = #nbtcomp.type.l nbtcomp.var
execute if score #nbtcomp.type.l nbtcomp.var matches 1..6 run function nbtcomp:types/numeric/data_l
execute if score #nbtcomp.type.l nbtcomp.var matches 7..12 run function nbtcomp:types/generic/data_l

# Data R
data modify storage nbtcomp:compare TypeData set from storage nbtcomp:compare Compare.DataR
scoreboard players operation #typeid.type_id typeid.var = #nbtcomp.type.r nbtcomp.var
execute if score #nbtcomp.type.r nbtcomp.var matches 1..6 run function nbtcomp:types/numeric/data_r
execute if score #nbtcomp.type.r nbtcomp.var matches 7..12 run function nbtcomp:types/generic/data_r

# Compare integrals
execute if score #typeid.type_id typeid.var matches 1..6 run function nbtcomp:compare/numeric/compare_integrals
# Compare lengths
execute if score #typeid.type_id typeid.var matches 7..12 run function nbtcomp:compare/generic/compare_lengths

# If comparison yields equal, compare floating point fractions
execute if score #nbtcomp.compare.result nbtcomp.var matches 0 if score #nbtcomp.type.l nbtcomp.var matches 5..6 run function nbtcomp:types/numeric/float/fraction/data_l
execute if score #nbtcomp.compare.result nbtcomp.var matches 0 if score #nbtcomp.type.r nbtcomp.var matches 5..6 run function nbtcomp:types/numeric/float/fraction/data_r

execute if score #nbtcomp.compare.result nbtcomp.var matches 0 if score #typeid.type_id typeid.var matches 5..6 run function nbtcomp:compare/numeric/compare_fractions