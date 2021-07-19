# captureredflag
#
# Important script: allows points and whatnot to be handled and such

# Title bar and such
tellraw @a ["",{"selector":"@p[team=blue,nbt={Inventory:[{id:'minecraft:red_banner'}]}]","color":"blue"},{"text":" captured the Red Flag!","color":"red"}]
title @a title {"text":"Red Flag Captured","color":"red"}

# Remove all red banners from players
clear @a minecraft:red_banner

# Play the victory sound
playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 1 1 1

# Increase the scoreboard
scoreboard players add Blue currentScores 1

# Hide the bossbar
bossbar set redflag visible false

# Reset the red flag
scoreboard players set RedFlagState gameState 0

# Put a physical flag back
execute at @e[type=minecraft:armor_stand,tag=redflag] run setblock ~ ~ ~ minecraft:red_banner[rotation=8]

# Some fun particles
execute at @e[tag=blueflag] run particle minecraft:totem_of_undying ~ ~ ~ ~ ~ ~ 1 500