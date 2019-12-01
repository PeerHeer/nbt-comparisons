# Author: PeerHeer
#
# Gets the integral part of a long by splitting it in a high and low part.
# Checks if the entity required exists. If not, it is summoned.

# Check if entity exists. If not, summon it.
execute positioned -30000000 0 1600 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1, tag=nbtcomp.entity, limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["nbtcomp.entity"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}

# Split the long into high and low integral parts.
execute positioned -30000000 0 1600 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1, tag=nbtcomp.entity, limit=1] run function nbtcomp:types/numeric/long/split_long