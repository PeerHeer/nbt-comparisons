# Author: PeerHeer
#> check_types/iterator/iterate.mcfunction
# Iterates over the possible types. Checks if the type matches for each element in Iterable.

# Check if the type matches.
function typeid:check_types/check

# Remove the head of the list.
data remove storage typeid:iterator Iterable[0]

# If the type did not match and Iterable is not empty, go to the next iteration.
execute if score #typeid.success typeid.var matches 0 if data storage typeid:iterator Iterable[0] run function typeid:check_types/iterator/iterate