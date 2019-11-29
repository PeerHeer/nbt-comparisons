# Convert floating point to long
data modify entity @s OwnerUUIDMost set from storage nbtcomp:compare TypeData
data modify storage nbtcomp:compare TypeData set from entity @s OwnerUUIDMost
function nbtcomp:types/numeric/long/split_long