# Author: PeerHeer
#
# Converts a floating-point number to a long by putting it in NBT data that is set as having a long (in this case, OwnerUUIDMost).
# Splits the long after converting it.

# Convert to long.
data modify entity @s OwnerUUIDMost set from storage nbtcomp:compare TypeData

# Split long.
data modify storage nbtcomp:compare TypeData set from entity @s OwnerUUIDMost
function nbtcomp:types/numeric/long/split_long