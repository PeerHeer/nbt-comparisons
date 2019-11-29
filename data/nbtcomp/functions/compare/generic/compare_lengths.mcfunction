execute if score #nbtcomp.compare.generic.length.l nbtcomp.var < #nbtcomp.compare.generic.length.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.generic.length.l nbtcomp.var = #nbtcomp.compare.generic.length.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 0
execute if score #nbtcomp.compare.generic.length.l nbtcomp.var > #nbtcomp.compare.generic.length.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1

tellraw @p ["Length L: ",{"score":{"name":"#nbtcomp.compare.generic.length.l","objective":"nbtcomp.var"}}]
tellraw @p ["Length R: ",{"score":{"name":"#nbtcomp.compare.generic.length.r","objective":"nbtcomp.var"}}]