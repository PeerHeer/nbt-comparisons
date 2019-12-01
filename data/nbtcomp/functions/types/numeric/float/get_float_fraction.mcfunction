# Author: PeerHeer
#
# Computes and compares the fractional parts of two numbers.

# Compute fractions.
execute if score #nbtcomp.type.l nbtcomp.var matches 5..6 run function nbtcomp:types/numeric/float/fraction/data_l
execute if score #nbtcomp.type.r nbtcomp.var matches 5..6 run function nbtcomp:types/numeric/float/fraction/data_r

# Compare fractions.
function nbtcomp:_compare/numeric/compare_fractions