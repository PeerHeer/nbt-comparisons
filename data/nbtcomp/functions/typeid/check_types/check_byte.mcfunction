execute store success score #nbtcomp.typeid.success.byte nbtcomp.var run data modify storage nbtcomp:typeid.types Byte.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.byte nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_short
execute if score #nbtcomp.typeid.success.byte nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_byte
