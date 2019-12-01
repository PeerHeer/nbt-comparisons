scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 3
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types Int.Str
data remove storage nbtcomp:typeid.types Int.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types Int
data remove storage nbtcomp:typeid.cache Entry[2]
