execute store success score #nbtcomp.typeid.success.int_array nbtcomp.var run data modify storage nbtcomp:typeid.types IntArray.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.int_array nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_long_array
execute if score #nbtcomp.typeid.success.int_array nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_int_array
