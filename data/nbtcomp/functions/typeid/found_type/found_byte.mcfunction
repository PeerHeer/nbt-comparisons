scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 1
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types Byte.Str
data remove storage nbtcomp:typeid.types Byte.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types Byte
data remove storage nbtcomp:typeid.cache Entry[2]
