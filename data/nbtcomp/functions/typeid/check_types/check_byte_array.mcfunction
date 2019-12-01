execute store success score #nbtcomp.typeid.success.byte_array nbtcomp.var run data modify storage nbtcomp:typeid.types ByteArray.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.byte_array nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_int_array
execute if score #nbtcomp.typeid.success.byte_array nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_byte_array
