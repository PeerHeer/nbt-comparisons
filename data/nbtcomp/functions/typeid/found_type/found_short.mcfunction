scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 2
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types Short.Str
data remove storage nbtcomp:typeid.types Short.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types Short
data remove storage nbtcomp:typeid.cache Entry[2]
