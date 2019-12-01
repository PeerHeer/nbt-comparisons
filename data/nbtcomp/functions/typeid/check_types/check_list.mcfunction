execute store success score #nbtcomp.typeid.success.list nbtcomp.var run data modify storage nbtcomp:typeid.types List.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.list nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_byte_array
execute if score #nbtcomp.typeid.success.list nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_list
