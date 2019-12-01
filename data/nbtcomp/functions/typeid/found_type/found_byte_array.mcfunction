scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 7
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types ByteArray.Str
data remove storage nbtcomp:typeid.types ByteArray.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types ByteArray
data remove storage nbtcomp:typeid.cache Entry[2]
