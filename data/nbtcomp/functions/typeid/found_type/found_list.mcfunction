scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 9
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types List.Str
data remove storage nbtcomp:typeid.types List.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types List
data remove storage nbtcomp:typeid.cache Entry[2]
