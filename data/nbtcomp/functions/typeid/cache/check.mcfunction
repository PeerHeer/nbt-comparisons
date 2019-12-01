# Author: PeerHeer
# Checks if the type to search is in the cache.

scoreboard players set #nbtcomp.typeid.success1 nbtcomp.var 0

# Checks if the type is in the cache by appending it to the cache entry's list and storing the success.
execute store success score #nbtcomp.typeid.success0 nbtcomp.var run data modify storage nbtcomp:typeid.cache Entry[0].List append from storage nbtcomp:typeid.args Data
execute unless score #nbtcomp.typeid.success0 nbtcomp.var matches 1 store success score #nbtcomp.typeid.success1 nbtcomp.var run data modify storage nbtcomp:typeid.cache Entry[1].List append from storage nbtcomp:typeid.args Data

# If the type is in the cache, extract ID ans Str from it.
execute if score #nbtcomp.typeid.success0 nbtcomp.var matches 1 run function nbtcomp:typeid/cache/success0
execute if score #nbtcomp.typeid.success1 nbtcomp.var matches 1 run function nbtcomp:typeid/cache/success1