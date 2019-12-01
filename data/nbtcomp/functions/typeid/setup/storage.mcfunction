# Author: PeerHeer
#
# Sets up the storage for typeid.

# The nbtcomp:typeid.args storage is used for user input.
data modify storage nbtcomp:typeid.args Data set value {}

# The nbtcomp:typeid.result storage is used for function output.
data modify storage nbtcomp:typeid.result TypeID set value 0
data modify storage nbtcomp:typeid.result TypeStr set value ""

# The nbtcomp:typeid.types storage is used to store the different types of NBT data.
# Numeric types
data modify storage nbtcomp:typeid.types Byte set value {List: [0b], ID: 1, Str: "Byte"}
data modify storage nbtcomp:typeid.types Short set value {List: [0s], ID: 2, Str: "Short"}
data modify storage nbtcomp:typeid.types Int set value {List: [0], ID: 3, Str: "Int"}
data modify storage nbtcomp:typeid.types Long set value {List: [0L], ID: 4, Str: "Long"}
data modify storage nbtcomp:typeid.types Float set value {List: [0.0f], ID: 5, Str: "Float"}
data modify storage nbtcomp:typeid.types Double set value {List: [0.0], ID: 6, Str: "Double"}
# Array types
data modify storage nbtcomp:typeid.types ByteArray set value {List: [[B;0b]], ID: 7, Str: "Byte Array"}
data modify storage nbtcomp:typeid.types IntArray set value {List: [[I;0]], ID: 11, Str: "Int Array"}
data modify storage nbtcomp:typeid.types LongArray set value {List: [[L;0L]], ID: 12, Str: "Long Array"}
# Misc types
data modify storage nbtcomp:typeid.types String set value {List: [""], ID: 8, Str: "String"}
data modify storage nbtcomp:typeid.types List set value {List: [[]], ID: 9, Str: "List"}
data modify storage nbtcomp:typeid.types Compound set value {List: [{}], ID: 10, Str: "Compound"}

# The nbtcomp:typeid.cache storage is used as a cache for the TypeList.
data modify storage nbtcomp:typeid.cache Entry set value []