# Author: PeerHeer
#> check_types/cache/success1.mcfunction
# Called when a cache hit occurs. Returns the type that was in the cache.

# Return the type ID.
execute store result score #typeid.type_id typeid.var run data get storage typeid:cache Entry[1].ID
execute store result storage typeid:result TypeID int 1.0 run scoreboard players get #typeid.type_id typeid.var

# Return the string identifier of the type.
data modify storage typeid:result TypeStr set from storage typeid:cache Entry[1].Str

# Remove the appended entry from the cache list.
data remove storage typeid:cache Entry[1].List[1]