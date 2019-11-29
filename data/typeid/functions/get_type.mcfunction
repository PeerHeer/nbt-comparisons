# Author: PeerHeer
#> get_type.mcfunction
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

# Setup typeid:iterator to iterate over the TypeList
data modify storage typeid:iterator Iterable set from storage typeid:types TypeList

# Check if the type is already in the cache.
function typeid:check_types/cache/check

# If the type is not already in the cache, start iterating over the possible types.
execute if score #typeid.success typeid.var matches 0 run function typeid:check_types/iterator/iterate

