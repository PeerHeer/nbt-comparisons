# Author: PeerHeer
#
# Call the prompt if the datapack is not yet installed.

execute unless score #nbtcomp.installed nbtcomp.var matches 1 run function nbtcomp:setup/prompt