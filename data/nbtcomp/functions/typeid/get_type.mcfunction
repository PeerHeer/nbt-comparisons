# Author: PeerHeer
# Gets the type of the NBT data stored in typeid:args Data.
#
# Checks types in the following order:
# 1. String
# 2. Compound
# 3. Byte
# 4. Short
# 5. Int
# 6. Long
# 7. Float
# 8. Double
# 9. List
# 10. Byte Array
# 11. Int Array
# 12. Long Array

# Initalize type_id to -1
scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var -1

# Check if the type is already in the cache.
function nbtcomp:typeid/cache/check

# If the type is not already in the cache, start iterating over the possible types.
execute if score #nbtcomp.typeid.type_id nbtcomp.var matches -1 run function nbtcomp:typeid/check_types/check_double

