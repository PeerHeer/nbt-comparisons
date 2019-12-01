# Author: PeerHeer
#> check_types/cache/success0.mcfunction
# Called when a cache hit occurs. Returns the type that was in the cache.

# Return the type ID.
execute store result score #nbtcomp.typeid.type_id nbtcomp.var run data get storage nbtcomp:typeid.cache Entry[0].ID
# execute store result storage nbtcomp:typeid.result TypeID int 1.0 run scoreboard players get #nbtcomp.typeid.type_id nbtcomp.var

# Return the string identifier of the type.
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.cache Entry[0].Str

# Remove the appended entry from the cache list.
data remove storage nbtcomp:typeid.cache Entry[0].List[1]