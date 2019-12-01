scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 6
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types Double.Str
data remove storage nbtcomp:typeid.types Double.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types Double
data remove storage nbtcomp:typeid.cache Entry[2]
