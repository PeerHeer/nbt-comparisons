# Author: PeerHeer
#> setup/storage.mcfunction
# Sets up the storage.

# The typeid:args storage is used for user input.
data modify storage typeid:args Data set value {}

# The typeid:result storage is used for function output.
data modify storage typeid:result TypeID set value 0
data modify storage typeid:result TypeStr set value ""

# The typeid:types storage is used to store the different types of NBT data.
# Numeric types
data modify storage typeid:types Byte set value {List: [0b], ID: 1, Str: "Byte"}
data modify storage typeid:types Short set value {List: [0s], ID: 2, Str: "Short"}
data modify storage typeid:types Int set value {List: [0], ID: 3, Str: "Int"}
data modify storage typeid:types Long set value {List: [0L], ID: 4, Str: "Long"}
data modify storage typeid:types Float set value {List: [0.0f], ID: 5, Str: "Float"}
data modify storage typeid:types Double set value {List: [0.0], ID: 6, Str: "Double"}
# Array types
data modify storage typeid:types ByteArray set value {List: [[B;0b]], ID: 7, Str: "Byte Array"}
data modify storage typeid:types IntArray set value {List: [[I;0]], ID: 11, Str: "Int Array"}
data modify storage typeid:types LongArray set value {List: [[L;0L]], ID: 12, Str: "Long Array"}
# Misc types
data modify storage typeid:types String set value {List: [""], ID: 8, Str: "String"}
data modify storage typeid:types List set value {List: [[]], ID: 9, Str: "List"}
data modify storage typeid:types Compound set value {List: [{}], ID: 10, Str: "Compound"}

# The TypeList is a list that contains entries for every type. This list is iterated over
# in check_types/iterator/iterate.
data modify storage typeid:types TypeList set value []
data modify storage typeid:types TypeList append from storage typeid:types Double
data modify storage typeid:types TypeList append from storage typeid:types Float
data modify storage typeid:types TypeList append from storage typeid:types Long
data modify storage typeid:types TypeList append from storage typeid:types Int
data modify storage typeid:types TypeList append from storage typeid:types Byte
data modify storage typeid:types TypeList append from storage typeid:types Short
data modify storage typeid:types TypeList append from storage typeid:types String
data modify storage typeid:types TypeList append from storage typeid:types Compound
data modify storage typeid:types TypeList append from storage typeid:types List
data modify storage typeid:types TypeList append from storage typeid:types ByteArray
data modify storage typeid:types TypeList append from storage typeid:types IntArray
data modify storage typeid:types TypeList append from storage typeid:types LongArray

# The typeid:iterator storage is used as temporary storage for the list to iterate over.
data modify storage typeid:iterator Iterable set value []

# The typeid:cache storage is used as a cache for the TypeList.
# execute unless data storage typeid:cache Entry.List run data modify storage typeid:cache Entry set from storage typeid:types Byte
data modify storage typeid:cache Entry set value []