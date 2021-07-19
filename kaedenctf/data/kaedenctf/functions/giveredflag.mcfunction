# giveredflag
# Handles the bestowing of the red flag on a player

# First, change the flag state so it's "taken"
scoreboard players set RedFlagState gameState 1
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 1 1 1

# Remove the red flag from the world
execute at @e[tag=redflag] run fill ~ ~ ~ ~ ~ ~ air replace red_banner

# Next, give the player the flag on their head
item replace entity @p[team=blue,nbt={Inventory:[{id:"minecraft:red_banner"}]}] armor.head with minecraft:red_banner{Enchantments:[{id:binding_curse,lvl:1}]}

# Next, make an announcement
title @a title {"text":"Red Flag Taken","color":"red"}

# Put their name in chat
tellraw @a[team=!lobby] ["",{"selector":"@p","color":"blue"},{"text":" took the Red Flag!","color":"red"}]

# A bossbar at the top?
bossbar set redflag visible true
bossbar set redflag players @a
bossbar set redflag name ["",{"selector":"@p[team=blue,nbt={Inventory:[{id:'minecraft:red_banner'}]}]","color":"blue"}]