execute store success score #nbtcomp.typeid.success.int nbtcomp.var run data modify storage nbtcomp:typeid.types Int.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.int nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_long
execute if score #nbtcomp.typeid.success.int nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_int
