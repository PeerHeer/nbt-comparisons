# Type is long.
execute if score #nbtcomp.typeid.type_id nbtcomp.var matches 4 run function nbtcomp:types/numeric/long/get_long
# Type is float or double.
execute if score #nbtcomp.typeid.type_id nbtcomp.var matches 5..6 run function nbtcomp:types/numeric/float/get_float_integral