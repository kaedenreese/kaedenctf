# stopgame
# Halts progress on a current game

scoreboard players set GameState gameState 0

clear @a minecraft:red_banner
clear @a minecraft:blue_banner

scoreboard players set RedFlagState gameState 0
scoreboard players set BlueFlagState gameState 0
scoreboard players set Red currentScores 0
scoreboard players set Blue currentScores 0

bossbar set blueflag visible false
bossbar set redflag visible false

# reset flags
execute at @e[type=minecraft:armor_stand,tag=redflag] run setblock ~ ~ ~ minecraft:red_banner[rotation=8]
execute at @e[type=minecraft:armor_stand,tag=blueflag] run setblock ~ ~ ~ minecraft:blue_banner[rotation=0]

# Remove all players from teams
team join lobby @a[team=red]
team join lobby @a[team=blue]