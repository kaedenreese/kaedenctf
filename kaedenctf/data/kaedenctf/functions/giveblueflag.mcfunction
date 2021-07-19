# giveblueflag
# Handles the bestowing of the blue flag on a player

# First, change the flag state so it's "taken"
scoreboard players set BlueFlagState gameState 1
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 1 1 1

# Remove the blue flag from the world
execute at @e[tag=blueflag] run fill ~ ~ ~ ~ ~ ~ air replace blue_banner

# Next, give the player the flag on their head
item replace entity @p[team=red,nbt={Inventory:[{id:"minecraft:blue_banner"}]}] armor.head with minecraft:blue_banner{Enchantments:[{id:binding_curse,lvl:1}]}

# Next, make an announcement
title @a title {"text":"Blue Flag Taken","color":"blue"}

# Put their name in chat
tellraw @a[team=!lobby] ["",{"selector":"@p","color":"red"},{"text":" took the Blue Flag!","color":"blue"}]

# A bossbar at the top?
bossbar set blueflag visible true
bossbar set blueflag players @a
bossbar set blueflag name ["",{"selector":"@p[team=red,nbt={Inventory:[{id:'minecraft:blue_banner'}]}]","color":"red"}]