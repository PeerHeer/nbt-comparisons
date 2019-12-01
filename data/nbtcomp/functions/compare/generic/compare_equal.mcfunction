# Author: PeerHeer
#
# Check if the DataR and DataL are equal by setting both data to Temp.
# If the set of DataR was unsuccessful, the data is equal and comparison
# is terminated and the result is returned in #nbtcomp.compare.result.

# Set Temp to DataL
data modify storage nbtcomp:compare Temp set from storage nbtcomp:compare Compare.DataL
# Set Temp to DataR
execute store success score #nbtcomp.compare.result nbtcomp.var run data modify storage nbtcomp:compare Temp set from storage nbtcomp:compare Compare.DataR