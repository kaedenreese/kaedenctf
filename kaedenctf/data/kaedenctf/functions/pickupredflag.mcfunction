# pickupredflag

# Just like it sounds

# Find who has it and set 'em up
scoreboard players set RedFlagState gameState 1
playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 1 1

# Next, give the player the flag on their head
item replace entity @p[team=blue,nbt={Inventory:[{id:"minecraft:red_banner"}]}] armor.head with minecraft:red_banner{Enchantments:[{id:binding_curse,lvl:1}]}

# Next, make an announcement
#title @a title {"text":"Red Flag Picked Up","color":"red"}

# Put their name in chat
tellraw @a[team=!lobby] ["",{"selector":"@p[team=blue,nbt={Inventory:[{id:'minecraft:red_banner'}]}]","color":"blue"},{"text":" picked up the Red Flag!","color":"red"}]

# A bossbar at the top?
bossbar set redflag visible true
bossbar set redflag players @a
bossbar set redflag name ["",{"selector":"@p[team=blue,nbt={Inventory:[{id:'minecraft:red_banner'}]}]","color":"blue"}]