# Author: PeerHeer
#> check_types/check.mcfunction
# Checks if the type in typeid:args Data matches the type in typeid:iterator Iterable[0]

# Checks if the types match by appending it to the current iterable element's list and storing the success.
execute store success score #typeid.success typeid.var run data modify storage typeid:iterator Iterable[0].List append from storage typeid:args Data

# If the types match, execute function typeid:check_types/success.
execute if score #typeid.success typeid.var matches 1 run function typeid:check_types/success