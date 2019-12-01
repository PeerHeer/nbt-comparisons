# Type is byte, short or int.
scoreboard players set #nbtcomp.compare.numeric.integral.high nbtcomp.var 0
execute store result score #nbtcomp.compare.numeric.integral.low nbtcomp.var run data get storage nbtcomp:compare TypeData
execute if score #nbtcomp.compare.numeric.integral.low nbtcomp.var matches ..-1 run scoreboard players set #nbtcomp.compare.numeric.integral.high nbtcomp.var -1