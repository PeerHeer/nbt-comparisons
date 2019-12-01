scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 4
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types Long.Str
data remove storage nbtcomp:typeid.types Long.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types Long
data remove storage nbtcomp:typeid.cache Entry[2]
