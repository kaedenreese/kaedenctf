# startgame
# resets everything for a fresh game right now

clear @a minecraft:red_banner
clear @a minecraft:blue_banner

scoreboard players set RedFlagState gameState 0
scoreboard players set BlueFlagState gameState 0
scoreboard players set Red currentScores 0
scoreboard players set Blue currentScores 0

bossbar set blueflag visible false
bossbar set redflag visible false

scoreboard players set GameState gameState 2