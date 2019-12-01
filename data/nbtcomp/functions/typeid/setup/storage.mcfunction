# Author: PeerHeer
#> setup/storage.mcfunction
# Sets up the storage.

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

# # The TypeList is a list that contains entries for every type. This list is iterated over
# # in check_types/iterator/iterate.
# data modify storage nbtcomp:typeid.types TypeList set value []
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types Double
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types Float
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types Long
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types Int
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types Byte
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types Short
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types String
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types Compound
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types List
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types ByteArray
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types IntArray
# data modify storage nbtcomp:typeid.types TypeList append from storage nbtcomp:typeid.types LongArray

# # The nbtcomp:typeid.iterator storage is used as temporary storage for the list to iterate over.
# data modify storage nbtcomp:typeid.iterator Iterable set value []

# The nbtcomp:typeid.cache storage is used as a cache for the TypeList.
# execute unless data storage nbtcomp:typeid.cache Entry.List run data modify storage nbtcomp:typeid.cache Entry set from storage nbtcomp:typeid.types Byte
data modify storage nbtcomp:typeid.cache Entry set value []