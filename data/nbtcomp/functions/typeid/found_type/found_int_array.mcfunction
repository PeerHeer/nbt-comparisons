scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 11
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types IntArray.Str
data remove storage nbtcomp:typeid.types IntArray.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types IntArray
data remove storage nbtcomp:typeid.cache Entry[2]
