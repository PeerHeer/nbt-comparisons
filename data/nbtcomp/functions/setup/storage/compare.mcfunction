# Author: PeerHeer
#
# Initializes the required fields in the nbtcomp:compare storage.

# Used to store the data to be compared.
data modify storage nbtcomp:compare Compare set value {}
# Used for temporary storage.
data modify storage nbtcomp:compare Temp set value {}
# Used for determining the required operations for the data type.
data modify storage nbtcomp:compare TypeData set value {}