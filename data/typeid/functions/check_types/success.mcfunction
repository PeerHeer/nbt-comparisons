# Author: PeerHeer
#> check_types/success.mcfunction
# Called when the types in typeid:iterator Iterable[0] and typeid:args Data match. Returns the type that was in the cache.

# Return the type ID
execute store result score #typeid.type_id typeid.var run data get storage typeid:iterator Iterable[0].ID
execute store result storage typeid:result TypeID int 1.0 run scoreboard players get #typeid.type_id typeid.var

# Return the string identifier of the type.
data modify storage typeid:result TypeStr set from storage typeid:iterator Iterable[0].Str

# Replace the current cache entry with the current head of the list.
data modify storage typeid:cache Entry prepend from storage typeid:iterator Iterable[0]
data remove storage typeid:cache Entry[2]