execute store success score #nbtcomp.typeid.success.string nbtcomp.var run data modify storage nbtcomp:typeid.types String.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.string nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_compound
execute if score #nbtcomp.typeid.success.string nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_string
