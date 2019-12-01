execute store success score #nbtcomp.typeid.success.long nbtcomp.var run data modify storage nbtcomp:typeid.types Long.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.long nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_byte
execute if score #nbtcomp.typeid.success.long nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_long
