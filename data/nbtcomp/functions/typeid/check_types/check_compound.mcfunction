execute store success score #nbtcomp.typeid.success.compound nbtcomp.var run data modify storage nbtcomp:typeid.types Compound.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.compound nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_list
execute if score #nbtcomp.typeid.success.compound nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_compound
