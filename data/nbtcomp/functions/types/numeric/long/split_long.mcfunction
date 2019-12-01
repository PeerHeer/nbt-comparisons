# Taken from: https://github.com/MinecraftPhi/MinecraftPhi-modules/blob/master/phi.int64/src/datapack/data/phi.int64/functions/split.mcfunction
# Modified by: PeerHeer

# Split up the long in TypeData.
data modify entity @s Color set from storage nbtcomp:compare TypeData

# Get the lower part of the number.
execute store result score #nbtcomp.compare.numeric.integral.low nbtcomp.var run data get entity @s Color

# Get the higher part of the number.
execute store result score #nbtcomp.compare.numeric.integral.high nbtcomp.var run data get storage nbtcomp:compare TypeData 0.00000000023283064365386962890625

# Set #nbtcomp.compare.numeric.positive if the high integral is 0 or higher and the low integral is negative.
execute if score #nbtcomp.compare.numeric.integral.low nbtcomp.var matches ..-1 if score #nbtcomp.compare.numeric.integral.high nbtcomp.var matches 0.. run scoreboard players set #nbtcomp.compare.numeric.positive nbtcomp.var 1
