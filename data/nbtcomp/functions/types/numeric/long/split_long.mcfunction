# Split up the long in TypeData
data modify entity @s Color set from storage nbtcomp:compare TypeData
# Get the lower part of the number.
execute store result score #nbtcomp.compare.numeric.integral.low nbtcomp.var run data get entity @s Color
# Get the higher part of the number.
execute store result score #nbtcomp.compare.numeric.integral.high nbtcomp.var run data get storage nbtcomp:compare TypeData 0.00000000023283064365386962890625

execute if score #nbtcomp.compare.numeric.integral.low nbtcomp.var matches ..-1 if score #nbtcomp.compare.numeric.integral.high nbtcomp.var matches 0.. run scoreboard players set #nbtcomp.compare.numeric.positive nbtcomp.var 1
