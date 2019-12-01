# Author: PeerHeer
#
# Compares the low integral parts of two numbers.
# Returns the result in #nbtcomp.compare.result.

# Compare low integrals.
execute if score #nbtcomp.compare.numeric.integral.low.l nbtcomp.var < #nbtcomp.compare.numeric.integral.low.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.numeric.integral.low.l nbtcomp.var > #nbtcomp.compare.numeric.integral.low.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1
execute if score #nbtcomp.compare.numeric.integral.low.l nbtcomp.var = #nbtcomp.compare.numeric.integral.low.r nbtcomp.var run scoreboard players set #nbtcomp.compare.result nbtcomp.var 0

# Check for edge case: comparing two numbers where the high integrals are equal and > 0 but one of the lower integrals is negative.
# In this case, the commands above would point to the negative number as the smallest number, but this is not the case.
# For example: comparing 2147483647 and 2147483648L will yield low integrals 2147483647 and -2147483648. If the edge case is not
# handled, the comparison would point to 2147483648L as the lowest number, which is not the case.
# The two commands below take care of that edge case by checking if one of the numbers is positive and the other number is not.
execute if score #nbtcomp.compare.numeric.positive.r nbtcomp.var matches 1 unless score #nbtcomp.compare.numeric.positive.l nbtcomp.var matches 1 run scoreboard players set #nbtcomp.compare.result nbtcomp.var -1
execute if score #nbtcomp.compare.numeric.positive.l nbtcomp.var matches 1 unless score #nbtcomp.compare.numeric.positive.r nbtcomp.var matches 1 run scoreboard players set #nbtcomp.compare.result nbtcomp.var 1