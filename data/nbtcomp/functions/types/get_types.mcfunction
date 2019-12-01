# Author: PeerHeer
#
# Gets the type IDs of DataL and DataR.
# Checks if the types are incomparable or not.
# If not, continues by calling nbtcomp:types/operation

# Get type DataL
data modify storage nbtcomp:typeid.args Data set from storage nbtcomp:compare Compare.DataL
function nbtcomp:typeid/get_type
scoreboard players operation #nbtcomp.type.l nbtcomp.var = #nbtcomp.typeid.type_id nbtcomp.var

# DEBUG: print type of DataL
# tellraw @p ["TypeID L: ",{"score":{"name":"#nbtcomp.type.l","objective":"nbtcomp.var"}}," (",{"nbt":"TypeStr","storage":"nbtcomp:typeid.result","color":"gold"}, ")"]

# Get type DataR
data modify storage nbtcomp:typeid.args Data set from storage nbtcomp:compare Compare.DataR
function nbtcomp:typeid/get_type
scoreboard players operation #nbtcomp.type.r nbtcomp.var = #nbtcomp.typeid.type_id nbtcomp.var

# DEBUG: print type of DataR
# tellraw @p ["TypeID R: ",{"score":{"name":"#nbtcomp.type.r","objective":"nbtcomp.var"}}," (",{"nbt":"TypeStr","storage":"nbtcomp:typeid.result","color":"gold"}, ")"]

# Check if types are incomparable
execute if score #nbtcomp.type.l nbtcomp.var matches 1..6 if score #nbtcomp.type.r nbtcomp.var matches 7..12 run function nbtcomp:errors/incomparable_error
execute if score #nbtcomp.type.l nbtcomp.var matches 7..12 if score #nbtcomp.type.r nbtcomp.var matches 1..6 run function nbtcomp:errors/incomparable_error

# If not incomparable, continue
execute unless score #nbtcomp.compare.result nbtcomp.var matches 2 run function nbtcomp:types/operation





