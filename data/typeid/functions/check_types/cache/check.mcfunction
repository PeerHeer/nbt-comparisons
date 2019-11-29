# Author: PeerHeer
#> check_types/cache/check.mcfunction
# Checks if the type to search is in the cache.
scoreboard players set #typeid.success1 typeid.var 0

# Checks if the type is in the cache by appending it to the cache entry's list and storing the success.
execute store success score #typeid.success typeid.var store success score #typeid.success0 typeid.var run data modify storage typeid:cache Entry[0].List append from storage typeid:args Data
execute unless score #typeid.success0 typeid.var matches 1 store success score #typeid.success typeid.var store success score #typeid.success1 typeid.var run data modify storage typeid:cache Entry[1].List append from storage typeid:args Data

# If the type is in the cache, execute function typeid:check_types/cache/success.
execute if score #typeid.success0 typeid.var matches 1 run function typeid:check_types/cache/success0
execute if score #typeid.success1 typeid.var matches 1 run function typeid:check_types/cache/success1

schedule function typeid:check_types/cache/empty 10s