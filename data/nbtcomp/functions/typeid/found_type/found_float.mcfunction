scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 5
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types Float.Str
data remove storage nbtcomp:typeid.types Float.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types Float
data remove storage nbtcomp:typeid.cache Entry[2]
