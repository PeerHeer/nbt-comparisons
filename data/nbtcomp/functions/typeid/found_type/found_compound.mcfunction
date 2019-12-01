scoreboard players set #nbtcomp.typeid.type_id nbtcomp.var 10
data modify storage nbtcomp:typeid.result TypeStr set from storage nbtcomp:typeid.types Compound.Str
data remove storage nbtcomp:typeid.types Compound.List[-1]

data modify storage nbtcomp:typeid.cache Entry prepend from storage nbtcomp:typeid.types Compound
data remove storage nbtcomp:typeid.cache Entry[2]
