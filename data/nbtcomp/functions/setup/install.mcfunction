# Author: PeerHeer
#
# Installs the datapack by calling all setup functions.

# Install datapack
function #nbtcomp:setup

# Do cleanup
scoreboard players set #nbtcomp.installed nbtcomp.var 1
schedule clear nbtcomp:setup/prompt
tellraw @p ["",{"text":"NBT comparisons installed successfully!","color":"green"}]