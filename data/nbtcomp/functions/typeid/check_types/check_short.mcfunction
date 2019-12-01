execute store success score #nbtcomp.typeid.success.short nbtcomp.var run data modify storage nbtcomp:typeid.types Short.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.short nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_string
execute if score #nbtcomp.typeid.success.short nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_short
