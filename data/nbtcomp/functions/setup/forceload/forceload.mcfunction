# Author: PeerHeer
#
# Forceload chunks in all dimensions.
# Forceloading the chunks is required for comparing Longs and Floats using an entity.

# Checks if chunk is forceloaded.
execute in minecraft:overworld store success score #nbtcomp.chunk_loaded nbtcomp.var run forceload query -30000000 1600
# If chunk is not forceloaded, forceload it.
execute if score #nbtcomp.chunk_loaded nbtcomp.var matches 0 in minecraft:the_nether run forceload add -30000000 1600
execute if score #nbtcomp.chunk_loaded nbtcomp.var matches 0 in minecraft:overworld run forceload add -30000000 1600
execute if score #nbtcomp.chunk_loaded nbtcomp.var matches 0 in minecraft:the_end run forceload add -30000000 1600