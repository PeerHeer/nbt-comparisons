# Return the result.
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var < #nbtcomp.compare.numeric.integral.high.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var > #nbtcomp.compare.numeric.integral.high.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var = #nbtcomp.compare.numeric.integral.high.r nbtcomp.var if score #nbtcomp.compare.numeric.integral.low.l nbtcomp.var < #nbtcomp.compare.numeric.integral.low.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var = #nbtcomp.compare.numeric.integral.high.r nbtcomp.var if score #nbtcomp.compare.numeric.integral.low.l nbtcomp.var > #nbtcomp.compare.numeric.integral.low.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1
execute if score #nbtcomp.compare.numeric.integral.high.l nbtcomp.var = #nbtcomp.compare.numeric.integral.high.r nbtcomp.var if score #nbtcomp.compare.numeric.integral.low.l nbtcomp.var = #nbtcomp.compare.numeric.integral.low.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 0

# Check for edge case: comparing two numbers where the high integrals are equal and > 0 but one of the lower integrals is negative.
# In this case, the commands above would point to the negative number as the smallest number, but this is not the case.
# The two commands below take care of that edge case.
execute if score #nbtcomp.compare.numeric.positive.r nbtcomp.var matches 1 unless score #nbtcomp.compare.numeric.positive.l nbtcomp.var matches 1 if score #nbtcomp.compare.numeric.integral.high.r nbtcomp.var = #nbtcomp.compare.numeric.integral.high.l nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.numeric.positive.l nbtcomp.var matches 1 unless score #nbtcomp.compare.numeric.positive.r nbtcomp.var matches 1 if score #nbtcomp.compare.numeric.integral.high.r nbtcomp.var = #nbtcomp.compare.numeric.integral.high.l nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1

# DEBUG: print integrals.
tellraw @p ["Integral L: ",{"score":{"name":"#nbtcomp.compare.numeric.integral.high.l","objective":"nbtcomp.var"},"color":"red"},{"score":{"name":"#nbtcomp.compare.numeric.integral.low.l","objective":"nbtcomp.var"},"color":"green"}]
tellraw @p ["Integral R: ",{"score":{"name":"#nbtcomp.compare.numeric.integral.high.r","objective":"nbtcomp.var"},"color":"red"},{"score":{"name":"#nbtcomp.compare.numeric.integral.low.r","objective":"nbtcomp.var"},"color":"green"}]