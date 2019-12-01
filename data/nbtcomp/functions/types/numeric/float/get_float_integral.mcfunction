# Author: PeerHeer
#
# Gets the integral part of a floating-point number.
# Checks if the entity required exists. If not, it is summoned.
# First converts the floating-point number to a long and then splits the long into
# a high and low integral part.

# Check if entity exists.
execute positioned -30000000 0 1600 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1, tag=nbtcomp.entity, limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["nbtcomp.entity"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}

# Convert float to long.
execute positioned -30000000 0 1600 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1, tag=nbtcomp.entity, limit=1] run function nbtcomp:types/numeric/float/float_to_long