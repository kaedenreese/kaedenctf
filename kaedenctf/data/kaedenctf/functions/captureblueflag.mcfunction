# captureblueflag
#
# Important script: allows points and whatnot to be handled and such

# Title bar and such
tellraw @a ["",{"selector":"@p[team=red,nbt={Inventory:[{id:'minecraft:blue_banner'}]}]","color":"red"},{"text":" captured the Blue Flag!","color":"blue"}]
title @a title {"text":"Blue Flag Captured","color":"blue"}

# Remove all red banners from players
clear @a minecraft:blue_banner

# Play the victory sound
playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 1 1 1

# Increase the scoreboard
scoreboard players add Red currentScores 1

# Hide the bossbar
bossbar set blueflag visible false

# Reset the red flag
scoreboard players set BlueFlagState gameState 0

# Put a physical flag back
execute at @e[type=minecraft:armor_stand,tag=blueflag] run setblock ~ ~ ~ minecraft:blue_banner[rotation=0]

# Some fun particles
execute at @e[tag=redflag] run particle minecraft:totem_of_undying ~ ~ ~ ~ ~ ~ 1 500