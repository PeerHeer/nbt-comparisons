scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 12
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types LongArray.Str
data remove storage nbtcomp:typeid.types LongArray.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types LongArray
data remove storage nbtcomp:typeid.cache Entry[2]
