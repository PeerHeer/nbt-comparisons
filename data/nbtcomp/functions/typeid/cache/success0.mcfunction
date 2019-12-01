# Author: PeerHeer
# Called when a cache hit occurs. Returns the type that was in the cache.

# Return the type ID.
execute store result score #nbtcomp.typeid.type_id nbtcomp.var run data get storage nbtcomp:typeid.cache Entry[0].ID

# Return the string identifier of the type.
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.cache Entry[0].Str

# Remove the appended entry from the cache list.
data remove storage nbtcomp:typeid.cache Entry[0].List[1]