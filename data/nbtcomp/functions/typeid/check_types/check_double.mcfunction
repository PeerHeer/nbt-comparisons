execute store success score #nbtcomp.typeid.success.double nbtcomp.var run data modify storage nbtcomp:typeid.types Double.List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success.double nbtcomp.var matches 1 run function nbtcomp:typeid/check_types/check_float
execute if score #nbtcomp.typeid.success.double nbtcomp.var matches 1 run function nbtcomp:typeid/found_type/found_double
say double