execute store success score #nbtcomp.typeid.success.float nbtcomp.var run data modify storage nbtcomp:typeid.types Float.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.float nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_int
execute if score #nbtcomp.typeid.success.float nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_float
